import 'package:flutter/material.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/widgets/app_text.dart';

class DummyDevelopmentScreen extends StatelessWidget {
  const DummyDevelopmentScreen({Key? key, required this.title})
      : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppText.body1Bold(title),
        centerTitle: true,
        backgroundColor: colors.primary,
      ),
      body: Center(
        child: AppText.body("Under Development"),
      ),
    );
  }
}
