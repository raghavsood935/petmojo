import 'dart:async';
import 'dart:io';
import 'dart:typed_data';
import 'dart:ui' as ui;
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:tamely/ui/post/preview_screen.dart';
import 'package:clickable_list_wheel_view/clickable_list_wheel_widget.dart';

class TextPost extends StatefulWidget {
  const TextPost({Key? key}) : super(key: key);

  @override
  _TextPost createState() => _TextPost();
}

class _TextPost extends State<TextPost> {
  List<String> images = [
    'assets/images/backgrounds/one.jpg',
    'assets/images/backgrounds/two.jpg',
    'assets/images/backgrounds/three.jpg',
    'assets/images/backgrounds/four.jpg',
    'assets/images/backgrounds/five.jpg',
    'assets/images/backgrounds/six.jpg',
    'assets/images/backgrounds/seven.jpg',
  ];
  List<String> imagesCrop = [
    'assets/images/backgrounds/onecrop.jpg',
    'assets/images/backgrounds/twocrop.jpg',
    'assets/images/backgrounds/threecrop.jpg',
    'assets/images/backgrounds/fourcrop.jpg',
    'assets/images/backgrounds/fivecrop.jpg',
    'assets/images/backgrounds/sixcrop.jpg',
    'assets/images/backgrounds/sevencrop.jpg',
  ];

  List<Color> colors = [
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.blue.shade900,
    Colors.blue.shade900,
    Colors.white,
  ];

  @override
  void initState() {
    super.initState();
    init();
  }

  ByteData? imgBytes;
  String path = '';
  bool isImageLoaded = false;
  bool isloaded = false;
  late ui.Image image;
  double textSize = 32.0;
  Future<void> init() async {
    path = await _localPath;
  }

  Future<ui.Image> loadImage(Uint8List img) async {
    final Completer<ui.Image> completer = Completer();
    ui.decodeImageFromList(img, (ui.Image img) {
      setState(() {
        isImageLoaded = true;
      });
      return completer.complete(img);
    });
    return completer.future;
  }

  double itemWidth = 70.0;
  double itemHeight = 70.0;
  int itemCount = 10;
  int selected = 2;

  final FixedExtentScrollController _scrollController =
      FixedExtentScrollController(initialItem: 2);
  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double scaleFactor = MediaQuery.of(context).textScaleFactor;
    double bottomAppBarHeight = AppBar().preferredSize.height;
    height = height - bottomAppBarHeight + 18;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: height,
          decoration: BoxDecoration(
              color: Colors.grey,
              image: DecorationImage(
                image: AssetImage(images[selected % 7]),
                fit: BoxFit.fill,
              )),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 40, 10, 0),
                child: Row(
                  children: [
                    const Icon(
                      Icons.close,
                      color: Colors.white,
                      size: 24.0,
                    ),
                    const Spacer(),
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        shape: StadiumBorder(),
                        backgroundColor: Colors.blueAccent,
                        primary: Colors.white,
                      ),
                      onPressed: () {
                        createPost(myController.text.toString());
                      },
                      child: Text(
                        'Next',
                        style: TextStyle(fontSize: textSize / 3),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: TextFormField(
                  maxLines: null,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(90),
                  ],
                  controller: myController,
                  style: TextStyle(
                      color: colors[selected % 7],
                      fontWeight: FontWeight.w700,
                      fontSize: textSize * .75),
                  cursorColor: Colors.white,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    counterText: "",
                    hintText: "What's on your mind ?",
                    hintStyle: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: const Color.fromARGB(144, 255, 255, 255),
                        fontSize: textSize * .75),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: SizedBox(
                  height: 110,
                  width: double.infinity,
                  child: RotatedBox(
                    quarterTurns: -1,
                    child: ClickableListWheelScrollView(
                      itemHeight: itemHeight,
                      itemCount: itemCount,
                      onItemTapCallback: (x) {
                        setState(() {
                          selected = x;
                        });
                      },
                      scrollController: _scrollController,
                      child: ListWheelScrollView.useDelegate(
                        controller: _scrollController,
                        itemExtent: itemHeight,
                        physics: FixedExtentScrollPhysics(),
                        overAndUnderCenterOpacity: 1,
                        perspective: 0.000001,
                        onSelectedItemChanged: (x) {
                          setState(() {
                            selected = x;
                          });
                        },
                        childDelegate: ListWheelChildBuilderDelegate(
                          builder: (context, index) => _child(index),
                          childCount: itemCount,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _child(int x) {
    return RotatedBox(
      quarterTurns: 1,
      child: Padding(
        padding: EdgeInsets.only(
            bottom: x == selected ? 0.0 : 8.0, top: x == selected ? 6.0 : 8.0),
        child: Container(
          width: x == selected ? 74 : 52,
          height: x == selected ? 74 : 52,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: x == selected ? Colors.white : Colors.transparent,
              shape: BoxShape.circle),
          child: CircleAvatar(
            radius: 33,
            backgroundImage: AssetImage(images[x % 7]),
          ),
        ),
      ),
    );
  }

  createPost(String message) async {
    final ByteData data = await rootBundle.load(imagesCrop[selected % 7]);
    image = await loadImage(Uint8List.view(data.buffer));
    generateImage(message, image);
  }

  void generateImage(String message, ui.Image image) async {
    final recorder = ui.PictureRecorder();
    final canvas =
        Canvas(recorder, Rect.fromPoints(Offset(0.0, 0.0), Offset(600, 600)));
    canvas.drawImage(image, new Offset(0, 0), Paint());

    final TextStyle style = TextStyle(
      color: colors[selected % 7],
      decorationStyle: TextDecorationStyle.dotted,
      decorationColor: Colors.green,
      decorationThickness: 0.25,
    );
    final ui.ParagraphBuilder paragraphBuilder =
        ui.ParagraphBuilder(ui.ParagraphStyle(
      fontSize: textSize,
      fontFamily: style.fontFamily,
      fontStyle: style.fontStyle,
      fontWeight: style.fontWeight,
      textAlign: TextAlign.center,
    ))
          ..pushStyle(style.getTextStyle())
          ..addText(message);
    final ui.Paragraph paragraph = paragraphBuilder.build()
      ..layout(ui.ParagraphConstraints(width: 520.0));
    canvas.drawParagraph(paragraph, Offset(40.0, (600 - paragraph.height) / 2));
    writeFile(recorder.endRecording());
  }

  void writeFile(picture) async {
    final img = await picture.toImage(600, 600);
    imgBytes = await img.toByteData(format: ImageByteFormat.png);
    int currentUnix = DateTime.now().millisecondsSinceEpoch;
    File file = File('$path/$currentUnix.png');
    file
        .writeAsBytes(imgBytes!.buffer
            .asUint8List(imgBytes!.offsetInBytes, imgBytes!.lengthInBytes))
        .whenComplete(() {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => PreviewScreen(imageFile: file, type: false),
        ),
      );
    });
  }

  Future<String> get _localPath async {
    final directory = await getExternalStorageDirectory();
    return directory!.path;
  }
}
