import 'package:flutter/material.dart';

class FeedbackView extends StatefulWidget {
  const FeedbackView({Key? key}) : super(key: key);

  @override
  _FeedbackViewState createState() => _FeedbackViewState();
}

class _FeedbackViewState extends State<FeedbackView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Feedback"),
      ),
    );
  }
}
