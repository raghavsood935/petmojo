import 'package:flutter/material.dart';
import 'package:kubelite/model/follow_profile_model.dart';
import 'package:kubelite/ui/profile/completed_your_profile/follow_people_profile_complete_action/follow_people_action_viewmodel.dart';
import 'package:kubelite/util/Color.dart';
import 'package:kubelite/util/String.dart';
import 'package:kubelite/util/ui_helpers.dart';
import 'package:kubelite/widgets/app_text.dart';
import 'package:kubelite/widgets/follow_btn.dart';
import 'package:stacked/stacked.dart';

class FollowPeopleProfileActionView extends StatelessWidget {
  const FollowPeopleProfileActionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<FollowPeopleProfileActionViewModel>.reactive(
      viewModelBuilder: () => FollowPeopleProfileActionViewModel(),
      builder: (context, model, child) => Scaffold(
        body: Container(
          height: screenHeight(context),
          child: Stack(
            children: [
              Positioned(
                right: 0,
                child: Image.asset(blobImgPath),
              ),
              Positioned(
                top: 50,
                left: 20,
                child: IconButton(
                  onPressed: model.goBack,
                  icon: Icon(Icons.arrow_back),
                ),
              ),
              Positioned(
                top: 125,
                left: 0,
                right: 0,
                child: AppText.headingThree(
                  model.title,
                  textAlign: TextAlign.center,
                ),
              ),
              Positioned(
                top: 175,
                right: 0,
                left: 0,
                bottom: 0,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  physics: ScrollPhysics(),
                  itemCount: model.listOfProfileModel.length,
                  itemBuilder: (context, index) =>
                      profileItem(context, model.listOfProfileModel[index]),
                  separatorBuilder: (context, index) => spacedDividerSmall,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget profileItem(BuildContext context, FollowProfileModel profileModel) {
  return Container(
    width: 100,
    child: Column(
      children: [
        ListTile(
          title: AppText.body(
            profileModel.profileName,
            color: colors.black,
          ),
          subtitle: AppText.body1(profileModel.userName),
          leading: CircleAvatar(
            radius: 30,
            backgroundColor: colors.black,
            child: CircleAvatar(
              radius: 25,
              backgroundImage: NetworkImage(profileModel.profileImgUrl),
            ),
          ),
          trailing: FollowBtn(initialState: profileModel.isFollowing),
        ),
        verticalSpaceSmall,
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              roundedCornerImage(context, profileModel.listOfPost[0]),
              roundedCornerImage(context, profileModel.listOfPost[1]),
              roundedCornerImage(context, profileModel.listOfPost[2]),
              roundedCornerImage(context, profileModel.listOfPost[3]),
            ],
          ),
        )
      ],
    ),
  );
}

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
