import 'package:flutter/material.dart';
import 'package:tamely/util/Color.dart';

class FullScreenImage extends StatelessWidget {
  FullScreenImage({Key? key, required this.url}) : super(key: key);

  final String url;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pop(context),
      child: Container(
        color: colors.black,
        child: Center(
          child: Image.network(url),
        ),
      ),
    );
  }
}
