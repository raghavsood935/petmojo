import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class _Item extends StatelessWidget {
  final bool type ;

  const _Item({
    required this.offset,
    required this.onDragStart,
    required this.text,
    required this.type,
  });

  final double size = 60;
  final Offset offset;
  final Function onDragStart;
  final String text;

  _handleDrag(details) {
    var x = details.globalPosition.dx;
    var y = details.globalPosition.dy;
    onDragStart(x, y);
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: offset.dx - size / 2,
      top: offset.dy - size / 2,
      child: GestureDetector(
        onPanStart: _handleDrag,
        onPanUpdate: _handleDrag,
        child: type ? Image(
          width: size,
          height: size,
          image: AssetImage('assets/emoji/$text.png'),
        ) : Container(
          width: 300,
          child: const TextField(
            maxLines: null,
            maxLength: 180,
            style:  TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.w700,
                fontSize: 24),
            cursorColor: Colors.white,
            textAlign: TextAlign.center,
            decoration:  InputDecoration(
              border: InputBorder.none,
              counterText: "",
              hintText: "What's on your mind ?",
              hintStyle: TextStyle(fontWeight: FontWeight.w700, color: Color.fromARGB(
                  144, 255, 255, 255),fontSize:24),
            ),
          ),
        ),
      ),
    );
  }
}
