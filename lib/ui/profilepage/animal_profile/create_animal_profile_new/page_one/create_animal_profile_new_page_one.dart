import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_text.dart';

import 'create_animal_profile_new_page_one_model.dart';

class CreateAnimalProfileNewPageOne extends StatefulWidget {
  const CreateAnimalProfileNewPageOne({Key? key}) : super(key: key);

  @override
  _CreateAnimalProfileNewPageOneState createState() =>
      _CreateAnimalProfileNewPageOneState();
}

class _CreateAnimalProfileNewPageOneState
    extends State<CreateAnimalProfileNewPageOne> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CreateAnimalProfileNewPageOneViewModel>.reactive(
      onModelReady: (model) => model.generatePetName(),
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
                verticalSpaceLarge,
                Image.asset("assets/images/on_boarding/create_pet_logo.png"),
                verticalSpaceLarge,
                Padding(
                  padding: commonPaddding,
                  child: Column(
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          AppText.captionBold(
                            "Pet Name ",
                            color: colors.black,
                          ),
                          AppText.body1Bold(
                            "*",
                            color: colors.primary,
                          ),
                        ],
                      ),
                      verticalSpaceSmall,
                      PhysicalModel(
                        elevation: 8,
                        color: colors.white,
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          margin: EdgeInsets.symmetric(vertical: 15),
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            children: [
                              Icon(
                                Icons.person_outline_rounded,
                                color: Color(0xFF393F45).withOpacity(0.50),
                              ),
                              horizontalSpaceRegular,
                              Expanded(
                                child: TextField(
                                  controller: model.petNameController,
                                  onChanged: model.onChange,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    disabledBorder: InputBorder.none,
                                    enabledBorder: InputBorder.none,
                                    errorBorder: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    focusedErrorBorder: InputBorder.none,
                                    hintText: "Enter your pet name",
                                    hintStyle: TextStyle(
                                      color: Color(0xFFABB3BB),
                                    ),
                                  ),
                                  keyboardType: TextInputType.name,
                                  textCapitalization: TextCapitalization.none,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      verticalSpaceRegular,
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          AppText.captionBold(
                            "Pet Username ",
                            color: colors.black,
                          ),
                          AppText.body1Bold(
                            "*",
                            color: colors.primary,
                          ),
                        ],
                      ),
                      verticalSpaceSmall,
                      PhysicalModel(
                        elevation: 8,
                        color: colors.white,
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          margin: EdgeInsets.symmetric(vertical: 15),
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            children: [
                              Icon(
                                Icons.person_outline_rounded,
                                color: Color(0xFF393F45).withOpacity(0.50),
                              ),
                              horizontalSpaceRegular,
                              Expanded(
                                child: TextField(
                                  controller: model.petUsernameController,
                                  onChanged: model.onChange,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    disabledBorder: InputBorder.none,
                                    enabledBorder: InputBorder.none,
                                    errorBorder: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    focusedErrorBorder: InputBorder.none,
                                    hintText: "Choose a username",
                                    hintStyle: TextStyle(
                                      color: Color(0xFFABB3BB),
                                    ),
                                  ),
                                  keyboardType: TextInputType.name,
                                  textCapitalization: TextCapitalization.none,
                                ),
                              ),
                            ],
                          ),
                        ),
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
                AppText.bodyBold("1 of 3"),
              ],
            ),
          ),
        ),
      ),
      viewModelBuilder: () => CreateAnimalProfileNewPageOneViewModel(),
    );
  }
}
