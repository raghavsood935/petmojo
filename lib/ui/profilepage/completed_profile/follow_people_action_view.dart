import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/models/follow_profile_model.dart';
import 'package:tamely/ui/profilepage/completed_profile/follow_people_action_viewmodel.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_text.dart';
import 'package:tamely/widgets/follow_btn.dart';

class FollowPeopleProfileActionView extends StatelessWidget {
  const FollowPeopleProfileActionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<FollowPeopleProfileActionViewModel>.reactive(
      viewModelBuilder: () => FollowPeopleProfileActionViewModel(),
      builder: (context, model, child) => Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              backgroundColor: Colors.white,
              elevation: 0.0,
              expandedHeight: 100,
              flexibleSpace: FlexibleSpaceBar(
                // background: Align(
                //   alignment: Alignment.topRight,
                //   child: Image.asset(blobImgPath),
                // ),
                title: AppText.body(
                  model.title,
                ),
                centerTitle: true,
              ),
              leading: IconButton(
                onPressed: model.goBack,
                icon: Icon(Icons.arrow_back),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) =>
                    profileItem(context, model.listOfProfileModel[index]),
                childCount: model.listOfProfileModel.length,
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget profileItem(BuildContext context, FollowProfileModel profileModel) {
  return Container(
    width: 100,
    color: Colors.white,
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
        ),
        spacedDividerSmall,
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
