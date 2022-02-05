import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_text.dart';
import 'create_animal_profile_new_page_three_model.dart';

class CreateAnimalProfileNewPageThree extends StatefulWidget {
  CreateAnimalProfileNewPageThree(
      {Key? key, required this.id, required this.token, required this.type})
      : super(key: key);

  String id;
  String token;
  String type;

  @override
  _CreateAnimalProfileNewPageThreeState createState() =>
      _CreateAnimalProfileNewPageThreeState();
}

class _CreateAnimalProfileNewPageThreeState
    extends State<CreateAnimalProfileNewPageThree> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CreateAnimalProfileNewPageThreeViewModel>.reactive(
      onModelReady: (model) => model.setBreedList("dog"),
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
                GestureDetector(
                  onTap: model.onBack,
                  child: Padding(
                    padding: commonPaddding,
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: AppText.body1Bold(
                        "Skip",
                        color: colors.primary,
                      ),
                    ),
                  ),
                ),
                verticalSpaceRegular,
                Image.asset("assets/images/on_boarding/create_pet_logo.png"),
                verticalSpaceLarge,
                Padding(
                  padding: commonPaddding,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppText.captionBold(
                        "Breed",
                        color: colors.black,
                      ),
                      verticalSpaceSmall,
                      PhysicalModel(
                          elevation: 8,
                          color: colors.white,
                          borderRadius: BorderRadius.circular(20),
                          child: GestureDetector(
                            onTap: () => model.selectAnimalBreed(context),
                            child: Container(
                              margin: EdgeInsets.symmetric(vertical: 15),
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Row(
                                children: [
                                  horizontalSpaceRegular,
                                  Expanded(
                                    child: GestureDetector(
                                      onTap: () =>
                                          model.selectAnimalBreed(context),
                                      child: Container(
                                        color: colors.white,
                                        child: IgnorePointer(
                                          child: TextField(
                                            controller: model.breedController,
                                            decoration: InputDecoration(
                                              border: InputBorder.none,
                                              disabledBorder: InputBorder.none,
                                              enabledBorder: InputBorder.none,
                                              errorBorder: InputBorder.none,
                                              focusedBorder: InputBorder.none,
                                              focusedErrorBorder:
                                                  InputBorder.none,
                                              hintText: "Choose breed",
                                              hintStyle: TextStyle(
                                                color: Color(0xFFABB3BB),
                                              ),
                                            ),
                                            keyboardType: TextInputType.name,
                                            textCapitalization:
                                                TextCapitalization.none,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  horizontalSpaceRegular,
                                  Icon(
                                    Icons.arrow_drop_down_sharp,
                                    color: colors.primary,
                                  ),
                                  horizontalSpaceRegular,
                                ],
                              ),
                            ),
                          )),
                      verticalSpaceRegular,
                      AppText.captionBold(
                        "Age of Pet",
                        color: colors.black,
                      ),
                      verticalSpaceSmall,
                      Row(
                        children: [
                          Expanded(
                            child: PhysicalModel(
                              elevation: 8,
                              color: colors.white,
                              borderRadius: BorderRadius.circular(20),
                              child: DropdownButton<String>(
                                isExpanded: true,
                                itemHeight: null,
                                icon: Icon(Icons.arrow_drop_down),
                                value: model.selectedYear,
                                items: model.listOfYears
                                    .map((item) => DropdownMenuItem<String>(
                                          child: AppText.body1(item,
                                              color: item == "Years"
                                                  ? colors.kcLightGreyColor
                                                  : colors.black),
                                          value: item,
                                        ))
                                    .toList(),
                                onChanged: model.onChangeYear,
                                onTap: () {
                                  FocusScope.of(context).unfocus();
                                },
                              ),
                            ),
                          ),
                          Expanded(
                            child: PhysicalModel(
                              elevation: 8,
                              color: colors.white,
                              borderRadius: BorderRadius.circular(20),
                              child: DropdownButton<String>(
                                isExpanded: true,
                                itemHeight: null,
                                icon: Icon(Icons.arrow_drop_down),
                                value: model.selectedMonth,
                                items: model.listOfMoths
                                    .map((item) => DropdownMenuItem<String>(
                                          child: AppText.body1(item,
                                              color: item == "Months"
                                                  ? colors.kcLightGreyColor
                                                  : colors.black),
                                          value: item,
                                        ))
                                    .toList(),
                                onChanged: model.onChangeMonth,
                                onTap: () {
                                  FocusScope.of(context).unfocus();
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                verticalSpaceLarge,
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
                  onTap: model.isValid ? model.createProfile : null,
                  child: Container(
                    width: double.infinity,
                    height: 60,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: model.isValid
                          ? colors.primary
                          : colors.kcLightGreyColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: model.isLoading
                        ? CircularProgressIndicator(
                            valueColor: AlwaysStoppedAnimation(Colors.white),
                          )
                        : Text(
                            "Next",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 14),
                          ),
                  ),
                ),
                verticalSpaceSmall,
                AppText.bodyBold("3 of 3"),
              ],
            ),
          ),
        ),
      ),
      viewModelBuilder: () => CreateAnimalProfileNewPageThreeViewModel(),
    );
  }
}
