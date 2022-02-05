import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/ui/profilepage/animal_profile/create_animal_profile_new/page_two/create_animal_profile_new_page_two_model.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_text.dart';

class CreateAnimalProfileNewPageTwo extends StatefulWidget {
  CreateAnimalProfileNewPageTwo(
      {Key? key, required this.id, required this.token})
      : super(key: key);

  String id;
  String token;

  @override
  _CreateAnimalProfileNewPageTwoState createState() =>
      _CreateAnimalProfileNewPageTwoState();
}

class _CreateAnimalProfileNewPageTwoState
    extends State<CreateAnimalProfileNewPageTwo> {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CreateAnimalProfileNewPageTwoViewModel>.reactive(
      onModelReady: (model) => model.init(widget.id),
      builder: (context, model, child) => Scaffold(
        backgroundColor: colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            physics: ScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(
                  height: 100,
                  width: screenWidth(context),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 20,
                        top: 0,
                        bottom: 0,
                        child: IconButton(
                          padding: EdgeInsets.zero,
                          alignment: Alignment.centerLeft,
                          icon: Icon(
                            Icons.arrow_back,
                            color: Colors.black,
                          ),
                          onPressed: model.onBack,
                        ),
                      ),
                      Center(
                        child: AppText.titleBold(
                          "Create your pet profile",
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
                // verticalSpaceRegular,
                Padding(
                  padding: commonPaddding,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppText.body1Bold("Choose Pet Type"),
                      GestureDetector(
                        onTap: model.onSkipPressed,
                        child: AppText.body1Bold(
                          "Skip",
                          color: colors.primary,
                        ),
                      ),
                    ],
                  ),
                ),
                StaggeredGridView.countBuilder(
                  physics: ScrollPhysics(),
                  shrinkWrap: true,
                  padding: EdgeInsets.all(20),
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 2,
                  itemBuilder: (context, index) => GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    child: Column(
                      children: [
                        PhysicalModel(
                          elevation: selectedIndex == index ? 12 : 8,
                          color: colors.white,
                          borderRadius: BorderRadius.circular(20),
                          shadowColor: selectedIndex == index
                              ? colors.primary
                              : Colors.black,
                          child: Container(
                            width: screenWidthPercentage(context,
                                percentage: 0.40),
                            height: screenWidthPercentage(context,
                                percentage: 0.40),
                            margin: EdgeInsets.symmetric(vertical: 15),
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                model.petAnimalTypeListValues[index]
                                    .imageAssetPath,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        verticalSpaceSmall,
                        AppText.bodyBold(
                            model.petAnimalTypeListValues[index].type)
                      ],
                    ),
                  ),
                  itemCount: model.petAnimalTypeListValues.length,
                  staggeredTileBuilder: (index) => StaggeredTile.fit(1),
                ),
                verticalSpace(150),
              ],
            ),
          ),
        ),
        bottomSheet: SizedBox(
          height: 100,
          child: Padding(
            padding: commonPaddding,
            child: Column(
              children: [
                GestureDetector(
                  onTap: () => model.createProfile(selectedIndex),
                  child: Container(
                    width: double.infinity,
                    height: 60,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: selectedIndex > -1
                          ? colors.primary
                          : colors.kcLightGreyColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: model.isLoading
                        ? CircularProgressIndicator(
                            valueColor: AlwaysStoppedAnimation(Colors.white),
                          )
                        : Text(
                            "Select & Next",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 14),
                          ),
                  ),
                ),
                verticalSpaceSmall,
                AppText.bodyBold("2 of 3"),
              ],
            ),
          ),
        ),
      ),
      viewModelBuilder: () => CreateAnimalProfileNewPageTwoViewModel(),
    );
  }
}
