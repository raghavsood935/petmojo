import 'dart:async';
import 'dart:io';
import 'dart:ui';

import 'package:camera/camera.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:tamely/ui/post/crop_image.dart';
import 'package:tamely/ui/post/edit_image.dart';
import 'package:tamely/ui/post/preview_screen.dart';
import 'package:image/image.dart' as img;
import 'package:tamely/util/ImageConstant.dart';
import 'package:tamely/util/ui_helpers.dart';

class CameraView extends StatefulWidget {
  final List<CameraDescription> cameras;

  const CameraView(this.cameras);

  @override
  _CameraViewState createState() {
    return _CameraViewState();
  }
}

class _CameraViewState extends State<CameraView> {
  CameraController? controller;

  late File _imageFile;
  final List<Permission> _permission = [
    Permission.camera,
    Permission.microphone,
    Permission.mediaLibrary
  ];
  PermissionStatus _cameraPermissionStatus = PermissionStatus.denied;
  PermissionStatus _micPermissionStatus = PermissionStatus.denied;
  PermissionStatus _writePermissionStatus = PermissionStatus.denied;
  File? _videoFile;
  bool visibility = false;
  List<IconData> icons = [
    Icons.flash_off,
    Icons.flash_auto,
    Icons.flash_on,
    Icons.highlight
  ];
  List<FlashMode> fMode = [
    FlashMode.off,
    FlashMode.auto,
    FlashMode.always,
    FlashMode.torch
  ];
  int flashMode = 0;
  String path = '';

  // Initial values
  bool _isCameraInitialized = false;
  bool _isRearCameraSelected = true;
  bool _isVideoCameraSelected = false;
  bool _isRecordingInProgress = false;
  bool fileType = false;
  double aspectRatio = 4 / 3;

  final resolutionPresets = ResolutionPreset.values;

  ResolutionPreset currentResolutionPreset = ResolutionPreset.high;

  @override
  void initState() {
    init();
    super.initState();
  }

  @override
  Future<void> didChangeAppLifecycleState(AppLifecycleState state) async {
    final CameraController? cameraController = controller;

    if (cameraController == null || !cameraController.value.isInitialized) {
      return;
    }
    switch (state) {
      case AppLifecycleState.inactive:
        await cameraController.dispose();
        break;
      case AppLifecycleState.resumed:
        onNewCameraSelected(cameraController.description);
        _listenForPermissionStatus();
        break;
      case AppLifecycleState.paused:
        await cameraController.dispose();
        break;
      case AppLifecycleState.detached:
        await cameraController.dispose();
        break;
    }
  }

  init() async {
    _listenForPermissionStatus();
    onNewCameraSelected(widget.cameras[0]);
  }

  void _listenForPermissionStatus() async {
    _cameraPermissionStatus = await _permission[0].status;
    _micPermissionStatus = await _permission[1].status;
    _writePermissionStatus = await _permission[2].status;
    if (_cameraPermissionStatus.isGranted &&
        _micPermissionStatus.isGranted &&
        _writePermissionStatus.isGranted) {
      setState(() {
        visibility = true;
      });
    } else
      visibility = false;
  }

  void onNewCameraSelected(CameraDescription cameraDescription) async {
    final previousCameraController = controller;
    final CameraController cameraController = CameraController(
      cameraDescription,
      currentResolutionPreset,
      imageFormatGroup: ImageFormatGroup.jpeg,
    );
    await previousCameraController?.dispose();
    if (mounted) {
      setState(() {
        controller = cameraController;
      });
    }
    // Update UI if controller updated
    cameraController.addListener(() {
      if (mounted) setState(() {});
    });
    try {
      await cameraController.initialize();
    } on CameraException catch (e) {
      print('Error initializing camera: $e');
    }
    if (mounted) {
      setState(() {
        _isCameraInitialized = controller!.value.isInitialized;
      });
    }
  }

  Future<XFile?> takePicture() async {
    final CameraController? cameraController = controller;
    if (cameraController!.value.isTakingPicture) {
      return null;
    }
    try {
      XFile file = await cameraController.takePicture();
      return file;
    } on CameraException catch (e) {
      print('Error occured while taking picture: $e');
      return null;
    }
  }

  Future<void> startVideoRecording() async {
    final CameraController? cameraController = controller;
    if (controller!.value.isRecordingVideo) {
      return;
    }
    try {
      await cameraController!.startVideoRecording();
      setState(() {
        _isRecordingInProgress = true;
      });
    } on CameraException catch (e) {
      print('Error starting to record video: $e');
    }
  }

  Future<XFile?> stopVideoRecording() async {
    if (!controller!.value.isRecordingVideo) {
      // Recording is already is stopped state
      return null;
    }

    try {
      XFile file = await controller!.stopVideoRecording();
      setState(() {
        _isRecordingInProgress = false;
      });
      return file;
    } on CameraException catch (e) {
      print('Error stopping video recording: $e');
      return null;
    }
  }

  Future<void> onLongPressRelease() async {
    XFile? rawVideo = await stopVideoRecording();
    File videoFile = File(rawVideo!.path);
    int currentUnix = DateTime.now().millisecondsSinceEpoch;
    final directory = await getApplicationDocumentsDirectory();
    String fileFormat = videoFile.path.split('.').last;
    _videoFile = await videoFile.copy(
      '${directory.path}/$currentUnix.$fileFormat',
    );
    if (_isVideoCameraSelected && !_isRecordingInProgress) {
      setState(() {
        _isVideoCameraSelected = false;
      });
    }
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => PreviewScreen(type: true, videoFile: _videoFile),
      ),
    );
  }

  dynamic _pickImageError;
  final ImagePicker _picker = ImagePicker();
  Future onImageButtonPressed(BuildContext context) async {
    try {
      final pickedFile = await _picker.pickImage(
        source: ImageSource.gallery,
        maxWidth: 500,
        maxHeight: 500,
        imageQuality: 70,
      );

      if (pickedFile != null) {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => CropImage(File(pickedFile.path)),
          ),
        );
      }
    } catch (e) {
      _pickImageError = e;
    }
  }

  Future<File> convert(RawImage rawImage, File file) async {
    var byteData = await rawImage.image!.toByteData(
      format: ImageByteFormat.png,
    );
    file.writeAsBytes(byteData!.buffer.asUint8List());
    return file;
  }

  Future<File> flipImage() async {
    List<int> imageBytes = await _imageFile.readAsBytes();
    final originalImage = img.decodeImage(imageBytes);
    final fixedFile = img.encodeJpg(img.flipHorizontal(originalImage!));
    return _imageFile.writeAsBytes(fixedFile);
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double bottomAppBarHeight = AppBar().preferredSize.height;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          width: screenWidth,
          height: screenHeight - bottomAppBarHeight,
          child: visibility
              ? _isCameraInitialized
                  ? Stack(
                      children: [
                        Center(
                          child: AspectRatio(
                            aspectRatio: 1 / controller!.value.aspectRatio,
                            child: CameraPreview(controller!),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(
                            16.0,
                            16.0,
                            16.0,
                            16.0,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: InkWell(
                                  onTap: () async {
                                    setState(() {
                                      flashMode++;
                                    });
                                    await controller!.setFlashMode(
                                      fMode[flashMode % 4],
                                    );
                                  },
                                  child: Icon(
                                    icons[flashMode % 4],
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Spacer(),
                              SizedBox(
                                height: 125,
                                width: screenWidth,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      bottom: 0,
                                      top: 0,
                                      right: 0,
                                      child: GestureDetector(
                                        onLongPress: () async {
                                          if (!_isVideoCameraSelected) {
                                            setState(() {
                                              _isVideoCameraSelected = true;
                                            });
                                            await startVideoRecording();
                                          }
                                        },
                                        onLongPressEnd: (result) async {
                                          if (_isRecordingInProgress)
                                            onLongPressRelease();
                                        },
                                        child: InkWell(
                                          onTap: () async {
                                            setState(() {
                                              flashMode = 0;
                                            });

                                            XFile? rawImage =
                                                await takePicture();
                                            _imageFile = File(rawImage!.path);

                                            int currentUnix = DateTime.now()
                                                .millisecondsSinceEpoch;

                                            final directory =
                                                await getApplicationDocumentsDirectory();

                                            String fileFormat =
                                                _imageFile.path.split('.').last;

                                            await _imageFile.copy(
                                              '${directory.path}/$currentUnix.$fileFormat',
                                            );

                                            if (!_isRearCameraSelected) {
                                              flipImage().then((value) =>
                                                  Navigator.of(context).push(
                                                    MaterialPageRoute(
                                                      builder: (context) =>
                                                          CropImage(value),
                                                    ),
                                                  ));
                                            } else {
                                              Navigator.of(context).push(
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      CropImage(_imageFile),
                                                ),
                                              );
                                            }
                                          },
                                          child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              Icon(
                                                Icons.circle,
                                                color: _isVideoCameraSelected
                                                    ? Colors.white
                                                    : Colors.white38,
                                                size: 80,
                                              ),
                                              Icon(
                                                Icons.circle,
                                                color: _isVideoCameraSelected
                                                    ? Colors.red
                                                    : Colors.white,
                                                size: 65,
                                              ),
                                              _isVideoCameraSelected &&
                                                      _isRecordingInProgress
                                                  ? const Icon(
                                                      Icons.stop_rounded,
                                                      color: Colors.white,
                                                      size: 32,
                                                    )
                                                  : Container(),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 0,
                                      bottom: 0,
                                      top: 0,
                                      child: GestureDetector(
                                        onTap: () =>
                                            onImageButtonPressed(context),
                                        child: Image.asset(
                                          galleryColorIcon,
                                          height: 75,
                                          width: 75,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      right: 15,
                                      bottom: 0,
                                      top: 0,
                                      child: InkWell(
                                        onTap: _isRecordingInProgress
                                            ? () {}
                                            : () {
                                                setState(() {
                                                  _isCameraInitialized = false;
                                                });
                                                onNewCameraSelected(
                                                    widget.cameras[
                                                        _isRearCameraSelected
                                                            ? 1
                                                            : 0]);
                                                setState(() {
                                                  _isRearCameraSelected =
                                                      !_isRearCameraSelected;
                                                });
                                              },
                                        child: Icon(
                                          _isRearCameraSelected
                                              ? Icons.camera_front
                                              : Icons.camera_rear,
                                          color: Colors.white,
                                          size: 30,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  : const Center(
                      child: Text(
                        'LOADING',
                        style: TextStyle(color: Colors.white),
                      ),
                    )
              : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Use Tamely\'s camera',
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                    Text(
                      'Take photos and videos with the Tamely app.',
                      style: TextStyle(color: Colors.white38, fontSize: 16),
                    ),
                    TextButton(
                        onPressed: () {
                          openAppSettings();
                        },
                        child: Text(
                          'Turn On',
                          style: TextStyle(color: Colors.blue, fontSize: 18),
                        ))
                  ],
                ),
        ),
      ),
    );
  }
}
