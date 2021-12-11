import 'dart:io';
import 'dart:typed_data';

import 'package:crop_your_image/crop_your_image.dart';
import 'package:flutter/material.dart';

import 'edit_image.dart';



class CropImage extends StatefulWidget {
  const CropImage(this.imageFile,);

  final File imageFile;

  @override
  _CropImage createState() => _CropImage();
}


class _CropImage extends State<CropImage> {

  final _cropController = CropController();
  late Uint8List _imageData;
  var _loadingImage = false;
  var _isCropping = false;
  var _isCircleUi = false;
  Uint8List? _croppedData;
  late File resultImage;

  @override
  void initState() {
    _loadAllImages();
    super.initState();
  }

  void _loadAllImages() {
    setState(() {
      _loadingImage = true;
    });
    _imageData =  widget.imageFile.readAsBytesSync();
    //_cropController.image = _imageData;
    resultImage = File(widget.imageFile.path);
    setState(() {
      _loadingImage = false;
    });
  }

  saveImage(){
    if(_croppedData!=null)
    resultImage.writeAsBytesSync(_croppedData!);
    else
      resultImage = widget.imageFile;

    Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) =>
              EditImage(imageFile: resultImage),
        ));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Crop',style: TextStyle(color: Colors.black),),
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: ElevatedButton(onPressed: (){saveImage();}, child: Text('Next')),
          )
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Container(
          child:
            Visibility(
            visible: !_loadingImage && !_isCropping,
            child: Column(
              children: [
                Expanded(
                  child: Visibility(
                    visible: _croppedData ==  null,
                    child: Stack(
                      children: [
                        if (_imageData.isNotEmpty)
                          Crop(
                            controller: _cropController,
                            image: _imageData,
                            onCropped: (croppedData) {
                              setState(() {
                                _croppedData = croppedData;
                                _isCropping = false;
                              });
                            },
                            withCircleUi: _isCircleUi,
                            initialSize: 0.5,
                          ),
                      ],
                    ),
                    replacement: Center(
                      child: _croppedData == null
                          ? SizedBox.shrink()
                          : Image.memory(_croppedData!),
                    ),
                  ),
                ),
                if (_croppedData == null)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      IconButton(
                        icon: Icon(Icons.crop_7_5),
                        onPressed: () {
                          _isCircleUi = false;
                          _cropController.aspectRatio = null;
                        },
                      ),
                      RotatedBox(
                        quarterTurns: 1,
                        child: IconButton(
                          icon: Icon(Icons.crop_16_9_outlined),
                          onPressed: () {
                            _isCircleUi = false;
                            _cropController.aspectRatio = 9 / 16;
                          },
                        ),
                      ),
                      IconButton(
                        icon: Icon(Icons.crop_5_4),
                        onPressed: () {
                          _isCircleUi = false;
                          _cropController.aspectRatio = 3 / 4;
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.crop_square),
                        onPressed: () {
                          _isCircleUi = false;
                          _cropController
                            ..withCircleUi = false
                            ..aspectRatio = 1;
                        },
                      ),
                      // IconButton(
                      //     icon: Icon(Icons.change_circle_rounded),
                      //     onPressed: () {
                      //       _isCircleUi = true;
                      //       _cropController.withCircleUi = true;
                      //     }),
                      ElevatedButton(
                        onPressed: (){
                          setState(() {
                            _isCropping = true;
                          });
                          _isCircleUi
                              ? _cropController.cropCircle()
                              : _cropController.crop();
                        },
                        child: Text('Crop',style: TextStyle(color: Colors.black),),
                      )
                    ],
                  ),
              ],
            ),
            replacement: Center(
              child: SizedBox(
                height: 100,
                  width: 100,
                  child: const CircularProgressIndicator()),
            ),
          ),
          
        ),
      ),
    );
  }
}