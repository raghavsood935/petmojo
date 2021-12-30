import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/ui/profilepage/count_info/list_of_followings_view_model.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/ImageConstant.dart';
import 'package:tamely/widgets/app_text.dart';
import 'package:tamely/widgets/custom_circle_avatar.dart';
import 'package:tamely/widgets/follow_static_btn.dart';

class ListOfFollowings extends StatefulWidget {
  const ListOfFollowings({
    Key? key,
    required this.id,
    required this.isFollowers,
  }) : super(key: key);

  final String id;
  final bool isFollowers;

  @override
  _ListOfFollowingsState createState() => _ListOfFollowingsState();
}

class _ListOfFollowingsState extends State<ListOfFollowings> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ListOfFollowingsViewModel>.reactive(
      viewModelBuilder: () => ListOfFollowingsViewModel(),
      onModelReady: (model) => model.init(widget.id, widget.isFollowers),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: model.goBack,
            icon: Icon(
              Icons.arrow_back,
              color: colors.black,
            ),
          ),
          centerTitle: true,
          title: AppText.subheading(model.title),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        body: SingleChildScrollView(
            child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ListView.builder(
                physics: ScrollPhysics(),
                shrinkWrap: true,
                itemCount: widget.isFollowers
                    ? model.listOfFollowersProfileModel.length
                    : model.listOfFollowingsProfileModel.length,
                itemBuilder: (context, index) => ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: AppText.body(
                    widget.isFollowers
                        ? model
                                .listOfFollowersProfileModel[index]
                                .profile
                                .followersDetailsResponse!
                                .followersInnerDetailsResponse!
                                .username ??
                            "-"
                        : model
                                .listOfFollowingsProfileModel[index]
                                .followingDetailsResponse!
                                .followingInnerDetailsResponse!
                                .username ??
                            "-",
                    color: colors.black,
                  ),
                  subtitle: AppText.body1(widget.isFollowers
                      ? model
                              .listOfFollowersProfileModel[index]
                              .profile
                              .followersDetailsResponse!
                              .followersInnerDetailsResponse!
                              .fullName ??
                          "-"
                      : model
                              .listOfFollowingsProfileModel[index]
                              .followingDetailsResponse!
                              .followingInnerDetailsResponse!
                              .fullName ??
                          "-"),
                  leading: CustomCircularAvatar(
                      radius: 24,
                      imgPath: widget.isFollowers
                          ? model
                                  .listOfFollowersProfileModel[index]
                                  .profile
                                  .followersDetailsResponse!
                                  .followersInnerDetailsResponse!
                                  .avatar ??
                              emptyProfileImgUrl
                          : model
                                  .listOfFollowingsProfileModel[index]
                                  .followingDetailsResponse!
                                  .followingInnerDetailsResponse!
                                  .avatar ??
                              emptyProfileImgUrl),
                  trailing: widget.isFollowers
                      ? GestureDetector(
                          onTap: () {
                            if (!(model.listOfFollowersProfileModel[index]
                                .isFollowing)) {
                              model.sendFollowRequest(model
                                  .listOfFollowersProfileModel[index].profile);
                              setState(() {
                                model.listOfFollowersProfileModel[index]
                                    .changeFollowing();
                              });
                            }
                          },
                          child: FollowingStaticBtn(
                              trueValue: "Following",
                              falseValue: "Follow",
                              state: (model.listOfFollowersProfileModel[index]
                                  .isFollowing)),
                        )
                      : Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 18,
                        ),
                  onTap: () => model.goToProfileDetailsPage(
                      context,
                      widget.isFollowers
                          ? model
                                  .listOfFollowersProfileModel[index]
                                  .profile
                                  .followersDetailsResponse!
                                  .followersInnerDetailsResponse!
                                  .Id ??
                              ""
                          : model
                                  .listOfFollowingsProfileModel[index]
                                  .followingDetailsResponse!
                                  .followingInnerDetailsResponse!
                                  .Id ??
                              "",
                      widget.isFollowers
                          ? model.listOfFollowersProfileModel[index].isFollowing
                          : true),
                ),
              ),
            ),
            Visibility(
              visible: model.isLoading,
              child: CircularProgressIndicator(
                color: colors.primary,
              ),
            ),
            Visibility(
              visible: !model.isEndOfList,
              child: Visibility(
                visible: !model.isLoading,
                child: GestureDetector(
                  onTap: model.getProfilesList,
                  child: AppText.body1Bold(
                    "See more profiles",
                    color: colors.primary,
                  ),
                ),
              ),
            )
          ],
        )),
      ),
    );
  }
}
