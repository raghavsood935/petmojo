import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/ui/profilepage/completed_profile/follow_people_action_viewmodel.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/ImageConstant.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_text.dart';
import 'package:tamely/widgets/custom_circle_avatar.dart';
import 'package:tamely/widgets/follow_static_btn.dart';

class FollowPeopleProfileActionView extends StatefulWidget {
  FollowPeopleProfileActionView({Key? key, required this.id}) : super(key: key);

  String id;

  @override
  _FollowPeopleProfileActionViewState createState() =>
      _FollowPeopleProfileActionViewState();
}

class _FollowPeopleProfileActionViewState
    extends State<FollowPeopleProfileActionView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<FollowPeopleProfileActionViewModel>.reactive(
      viewModelBuilder: () => FollowPeopleProfileActionViewModel(),
      onModelReady: (model) => model.init(widget.id),
      builder: (context, model, child) => Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
          physics: ScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 40),
            child: Column(
              children: [
                AppBar(
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
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: ListView.builder(
                    physics: ScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: model.listOfProfileModel.length,
                    itemBuilder: (context, index) => ListTile(
                      contentPadding: EdgeInsets.zero,
                      title: AppText.body(
                        model.listOfProfileModel[index].profile.username ?? "-",
                        color: colors.black,
                      ),
                      subtitle: AppText.body1(
                          model.listOfProfileModel[index].profile.fullname ??
                              "-"),
                      leading: CustomCircularAvatar(
                          radius: 24,
                          imgPath:
                              model.listOfProfileModel[index].profile.avatar ??
                                  emptyProfileImgUrl),
                      trailing: GestureDetector(
                        onTap: () {
                          if (!(model.listOfProfileModel[index].isFollowing)) {
                            model.sendFollowRequest(
                                model.listOfProfileModel[index].profile);
                            setState(() {
                              model.listOfProfileModel[index].changeFollowing();
                            });
                          }
                        },
                        child: FollowingStaticBtn(
                            trueValue: "Following",
                            falseValue: "Follow",
                            state:
                                (model.listOfProfileModel[index].isFollowing)),
                      ),
                      onTap: () => model.goToProfileDetailsPage(
                          context, model.listOfProfileModel[index].profile.Id!),
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
                  visible: !model.isLoading,
                  child: GestureDetector(
                    onTap: model.getProfilesList,
                    child: AppText.body1Bold(
                      "See more profiles",
                      color: colors.primary,
                    ),
                  ),
                ),
              ],
            ),
          ),
        )),
      ),
    );
  }
}

// Widget profileItem(ProfileResponse profileModel) {
//   bool isFollowing = false;
//   return
// }

Widget roundedCornerImage(BuildContext context, String url) {
  return SizedBox(
    height: 120,
    width: screenWidthPercentage(context, percentage: 0.20),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.network(
        url,
        fit: BoxFit.cover,
      ),
    ),
  );
}
