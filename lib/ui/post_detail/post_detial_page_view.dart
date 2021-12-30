import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/models/feed_post_response.dart';
import 'package:tamely/ui/feed/feed_view.dart';
import 'package:tamely/ui/post_detail/post_detial_page_view_model.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/ImageConstant.dart';
import 'package:tamely/util/global_methods.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_text.dart';
import 'package:tamely/widgets/custom_circle_avatar.dart';
import 'package:tamely/widgets/post_item_view.dart';

class PostDetialsPageView extends StatefulWidget {
  const PostDetialsPageView({
    Key? key,
    required this.postResponse,
  }) : super(key: key);

  final FeedPostResponse postResponse;

  @override
  _PostDetialsPageViewState createState() => _PostDetialsPageViewState();
}

class _PostDetialsPageViewState extends State<PostDetialsPageView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<PostDetialsPageViewModel>.reactive(
      viewModelBuilder: () => PostDetialsPageViewModel(),
      onModelReady: (model) => model.init(widget.postResponse),
      builder: (context, model, child) => Scaffold(
        appBar: commonAppBar(context, "For you"),
        body: SingleChildScrollView(
          child: Column(
            children: [
              verticalSpaceSmall,
              ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: model.dummyListOfFeedPost.length,
                itemBuilder: (context, index) => PostItemView(
                  postResponse: model.dummyListOfFeedPost[index],
                  needToShowComments: true,
                ),
                separatorBuilder: (BuildContext context, int index) => Divider(
                  indent: 0,
                  thickness: 5,
                  color: colors.kcLightGreyBackground,
                ),
              ),
              verticalSpaceRegular,
              Visibility(
                visible: model.isLoading,
                child: Align(
                  alignment: Alignment.center,
                  child: CircularProgressIndicator(
                    color: colors.primary,
                  ),
                ),
              ),
              Visibility(
                visible: !model.isLoading,
                child: GestureDetector(
                  onTap: model.seeMorePost,
                  child: AppText.body1Bold(
                    "See more Posts",
                    textAlign: TextAlign.center,
                    color: colors.primary,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget imageButton(bool isNetworkImg, void onTap,
    {String assetsPath = "", String urlPath = ""}) {
  return GestureDetector(
    child: isNetworkImg
        ? Image.network(urlPath)
        : Image.asset(
            assetsPath,
          ),
    onTap: () => onTap,
  );
}
