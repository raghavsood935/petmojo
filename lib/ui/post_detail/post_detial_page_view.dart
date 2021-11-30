import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/models/post_response.dart';
import 'package:tamely/ui/post_detail/post_detial_page_view_model.dart';
import 'package:tamely/widgets/app_text.dart';

class PostDetialsPageView extends StatefulWidget {
  const PostDetialsPageView({Key? key, required this.postResponse})
      : super(key: key);

  final PostResponse postResponse;

  @override
  _PostDetialsPageViewState createState() => _PostDetialsPageViewState();
}

class _PostDetialsPageViewState extends State<PostDetialsPageView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<PostDetialsPageViewModel>.reactive(
      viewModelBuilder: () => PostDetialsPageViewModel(),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          title: AppText.body1Bold("Post"),
        ),
      ),
    );
  }
}
