import 'dart:io';
import 'dart:typed_data';
import 'dart:ui' as ui;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/app/app.router.dart';
import 'package:tamely/ui/post/widgets/bottom_buttons.dart';
import 'package:tamely/ui/post/widgets/emoticons.dart';

import 'helper/filter_selector.dart';
import 'helper/widget_model.dart';

@immutable
class EditImage extends StatefulWidget {
  final File imageFile;

  const EditImage({Key? key, required this.imageFile}) : super(key: key);

  @override
  _EditImage createState() => _EditImage();
}

class _EditImage extends State<EditImage> {
  final navigationService = locator<NavigationService>();

  List<String> emojies = [
    "one",
    "two",
    "three",
    "four",
    "five",
    "six",
    "seven",
    "eight",
    "nine",
    "ten",
    "eleven",
    "twelve",
    "thirteen",
    "fourteen",
    "fifteen",
    "sixteen",
    "seventeen",
    "eighteen",
    "nineteen",
    "twenty",
    "twentyone",
    "twentytwo",
    "twentythree",
    "twentyfour",
    "twentyfive",
  ];

  final GlobalKey _globalKey = GlobalKey();
  final _filterColor = ValueNotifier<Color>(Colors.transparent);
  List<WidgetModel> items = [];
  final _filters = [
    Colors.transparent,
    ...List.generate(
      Colors.primaries.length,
      (index) => Colors.primaries[(index * 4) % Colors.primaries.length],
    )
  ];
//Bottom Buttons
  bool isPost = true;
  double transparencyPost = 0.3;
  double transparencyStory = 0.7;
  void onPostClick() {
    isPost = true;
    setState(() {
      transparencyStory = 0.7;
      transparencyPost = 0.3;
    });
  }

  void onStoryClick() {
    isPost = false;
    setState(() {
      transparencyStory = 0.3;
      transparencyPost = 0.7;
    });
  }

  void onNextClick() {
    saveImage();
  } //SavePost

  bool cancelButtonVisibility = false;
  double width = 0;
  double height = 0;

  Future<bool> _onWillPop() async {
    return (await showDialog(
          context: context,
          builder: (context) => new AlertDialog(
            title: new Text('Discard Edits?'),
            content: new Text(
                'If you go back now you will lose all of the edits you have made.'),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: new Text('No'),
              ),
              TextButton(
                onPressed: () => Navigator.of(context).pop(true),
                child: new Text('Yes'),
              ),
            ],
          ),
        )) ??
        false;
  }

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Material(
        color: Colors.black,
        child: Column(children: [
          Expanded(
            child: Stack(
              children: [
                Positioned.fill(
                  child: RepaintBoundary(
                      key: _globalKey,
                      child: Stack(children: [
                        GestureDetector(
                          onTap: () {
                            FocusScopeNode currentFocus =
                                FocusScope.of(context);

                            if (!currentFocus.hasPrimaryFocus) {
                              currentFocus.unfocus();
                            }
                          },
                          child: Center(child: _buildPhotoWithFilter()),
                        ),
                        ..._buildItems(),
                      ])),
                ),
                Container(
                  width: width,
                  child: Column(
                    children: [
                      Visibility(
                        visible: cancelButtonVisibility,
                        child: Center(
                          child: Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Icon(
                              Icons.cancel_outlined,
                              size: 70,
                              color: Colors.red,
                            ),
                          ),
                        ),
                      ),
                      Spacer(),
                      Row(children: [
                        Spacer(),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              items.add(WidgetModel(
                                  offset: Offset(width / 2 - 90, height / 2),
                                  text: '4',
                                  type: false));
                            });
                          },
                          highlightColor: Colors.pink.withOpacity(0.3),
                          icon: Icon(Icons.text_fields, color: Colors.white),
                        ),
                      ]),
                      SizedBox(
                        height: 20,
                      ),
                      Row(children: [
                        Spacer(),
                        IconButton(
                          onPressed: () {
                            FocusScopeNode currentFocus =
                                FocusScope.of(context);
                            if (!currentFocus.hasPrimaryFocus) {
                              currentFocus.unfocus();
                            }
                            _presentGridPopup(context);
                          },
                          highlightColor: Colors.pink.withOpacity(0.3),
                          icon: Icon(Icons.emoji_emotions_outlined,
                              color: Colors.white),
                        ),
                      ]),
                      _buildFilterSelector(),
                    ],
                  ),
                ),
              ],
            ),
          ),
          BottomButtons(
            transparencyPost: transparencyPost,
            transparencyStory: transparencyStory,
            onNextClick: onNextClick,
            onPostClick: !isPost ? onPostClick : () {},
            onStoryClick: isPost ? onStoryClick : () {},
          ),
        ]),
      ),
    );
  }

  void addEmoji(int x) {
    setState(() {
      items.add(WidgetModel(
          offset: Offset(100, 100), text: '${emojies[x - 1]}', type: true));
    });
  }

  void _presentGridPopup(BuildContext context) {
    Navigator.of(context).push<void>(PageRouteBuilder(
      opaque: false,
      barrierColor: null,
      barrierDismissible: true,
      barrierLabel: 'barrier',
      pageBuilder: (context, animation, secondaryAnimation) => GridPopup(
        callback: (val) => addEmoji(val),
      ),
      transitionDuration: Duration(milliseconds: 300),
      transitionsBuilder: (context, animation, secondaryAnimation, child) =>
          SlideTransition(
        position: Tween<Offset>(begin: Offset(0.0, 1.0), end: Offset.zero)
            .animate(animation),
        child: child,
      ),
    ));
  }

  Future<void> saveImage() async {
    RenderRepaintBoundary? repaintBoundary =
        _globalKey.currentContext!.findRenderObject() as RenderRepaintBoundary?;
    ui.Image boxImage = await repaintBoundary!.toImage(pixelRatio: 1);
    ByteData? byteData =
        await boxImage.toByteData(format: ui.ImageByteFormat.png);
    Uint8List uint8list = byteData!.buffer.asUint8List();
    var directory = await getExternalStorageDirectory();
    File newfile = File('${directory!.path}/new.png');
    newfile.writeAsBytesSync(uint8list);
    print(newfile.path);
    navigationService.navigateTo(
      Routes.newPost,
      arguments: NewPostArguments(path: newfile.path),
    );
  }

  void _onFilterChanged(Color value) {
    _filterColor.value = value;
  }

  Widget _buildPhotoWithFilter() {
    return ValueListenableBuilder(
      valueListenable: _filterColor,
      builder: (context, value, child) {
        final color = value as Color;
        if (color.value == 0)
          return Image.file(
            widget.imageFile,
          );
        else
          return Image.file(
            widget.imageFile,
            color: color.withOpacity(0.5),
            colorBlendMode: BlendMode.color,
            fit: BoxFit.cover,
          );
      },
    );
  }

  Widget _buildFilterSelector() {
    return FilterSelector(
      onFilterChanged: _onFilterChanged,
      filters: _filters,
      imageFile: widget.imageFile,
    );
  }

  List<Widget> _buildItems() {
    final res = <Widget>[];
    items.asMap().forEach((ind, item) {
      res.add(_Item(
        onDragStart: onDragStart(ind),
        offset: item.offset,
        text: item.text,
        type: item.type,
        onDragEnd: onDragEnd(ind),
      ));
    });
    return res;
  }

  double x1 = 1;
  double y1 = 1;

  Function onDragStart(int index) => (x, y) {
        setState(() {
          if (!items[index].type)
            items[index] =
                items[index].copyWithNewOffset(Offset(x - 90, y - 15));
          else
            items[index] = items[index].copyWithNewOffset(Offset(x, y));

          cancelButtonVisibility = true;
          x1 = Offset(x, y).dx;
          y1 = Offset(x, y).dy;
        });
      };
  Function onDragEnd(int index) => () {
        setState(() {
          if (x1 > ((width - 70) / 2) &&
              x1 < ((width - 70) / 2 + 70) &&
              y1 < 120) items.removeAt(index);
          cancelButtonVisibility = false;
        });
      };
}

class _Item extends StatelessWidget {
  final bool type;

  const _Item({
    required this.offset,
    required this.onDragStart,
    required this.text,
    required this.type,
    required this.onDragEnd,
  });

  final double size = 60;
  final Offset offset;
  final Function onDragStart;
  final Function onDragEnd;
  final String text;

  _handleDrag(details) {
    var x = details.globalPosition.dx;
    var y = details.globalPosition.dy;
    onDragStart(x, y);
  }

  _handleDragEnd(details) {
    onDragEnd();
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: offset.dx - size,
      top: offset.dy - size,
      child: GestureDetector(
        onPanStart: _handleDrag,
        onPanUpdate: _handleDrag,
        onPanEnd: _handleDragEnd,
        child: type
            ? Image(
                width: size,
                height: size,
                image: AssetImage('assets/images/emoji/$text.png'),
              )
            : Container(
                width: 300,
                child: TextField(
                  maxLines: null,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(90),
                  ],
                  style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.w700,
                      fontSize: 24),
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
                        color: Color.fromARGB(144, 255, 255, 255),
                        fontSize: 24),
                  ),
                ),
              ),
      ),
    );
  }
}
