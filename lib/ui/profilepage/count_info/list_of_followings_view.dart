import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/ui/profilepage/count_info/list_of_followings_view_model.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/ImageConstant.dart';
import 'package:tamely/widgets/app_text.dart';
import 'package:tamely/widgets/custom_circle_avatar.dart';
import 'package:tamely/widgets/follow_static_btn.dart';

class ListOfFollowings extends StatefulWidget {
  const ListOfFollowings({Key? key, required this.id}) : super(key: key);

  final id;

  @override
  _ListOfFollowingsState createState() => _ListOfFollowingsState();
}

class _ListOfFollowingsState extends State<ListOfFollowings> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ListOfFollowingsViewModel>.reactive(
      viewModelBuilder: () => ListOfFollowingsViewModel(),
      onModelReady: (model) => model.init(widget.id),
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
          title: AppText.subheading("Followings"),
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
                itemCount: model.listOfProfileModel.length,
                itemBuilder: (context, index) => ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: AppText.body(
                    model.listOfProfileModel[index].profile.username ?? "-",
                    color: colors.black,
                  ),
                  subtitle: AppText.body1(
                      model.listOfProfileModel[index].profile.fullname ?? "-"),
                  leading: CustomCircularAvatar(
                      radius: 24,
                      imgPath: model.listOfProfileModel[index].profile.avatar ??
                          emptyProfileImgUrl),
                  trailing: Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 18,
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
        )),
      ),
    );
  }
}
