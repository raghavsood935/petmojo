import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/ui/services/videos_page/videos_page_view_model.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/play_btn.dart';

class VideosSectionView extends StatelessWidget {
  const VideosSectionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => VideosSectionViewModel(),
      builder: (context, model, child) => Scaffold(
        appBar: commonAppBar(context, "Videos"),
        body: Padding(
          padding: const EdgeInsets.only(top: 25),
          child: ListView.separated(
            itemBuilder: (context, index) => VideoItem(),
            separatorBuilder: (context, index) => verticalSpaceRegular,
            itemCount: 5,
            shrinkWrap: true,
          ),
        ),
      ),
    );
  }
}
