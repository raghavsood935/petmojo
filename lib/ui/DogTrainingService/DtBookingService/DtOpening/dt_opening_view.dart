import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'dt_opening_viewmodel.dart';

class DTOpening extends StatelessWidget {
  const DTOpening({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DTOpeningViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        backgroundColor: colors.white,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                verticalSpaceRegular,
                // Heading
                Container(
                  height: 80,
                  child: Image.asset(
                      "assets/images/service_opening/opening_training_first_text.png"),
                ),
                verticalSpaceRegular,
                //
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 150,
                      child: Image.asset(
                          "assets/images/service_opening/opening_training_second_text.png"),
                    ),
                  ],
                ),
                //
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 120,
                          width: 120,
                          child: Image.asset(
                              "assets/images/service_opening/opening_training_medal.png"),
                        ),
                        Container(
                          child: Image.asset(
                              "assets/images/service_opening/opening_training_third_text.png"),
                        ),
                      ],
                    ),
                    //verticalSpaceRegular,
                    Column(
                      children: [
                        Container(
                          height: 120,
                          width: 120,
                          child: Image.asset(
                              "assets/images/service_opening/opening_training_dog.png"),
                        ),
                        Container(
                          child: Image.asset(
                              "assets/images/service_opening/opening_training_fourth_text.png"),
                        ),
                      ],
                    ),
                  ],
                ),

                //
                Container(
                  height: 200,
                  width: 200,
                  child: Image.asset(
                      "assets/images/service_opening/opening_people.png"),
                ),
                //
                Container(
                  height: 30,
                  child: Image.asset(
                      "assets/images/service_opening/opening_training_fifth_text.png"),
                ),
                verticalSpaceTiny,
                verticalSpaceTiny,
                verticalSpace(80),
              ],
            ),
          ),
        ),
        bottomSheet: Container(
          height: 70,
          child: Column(
            children: [
              GestureDetector(
                onTap: model.toDogTrainingBooking,
                child: Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  height: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: colors.primary,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Text(
                    "Try Now",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                  ),
                ),
              ),
              verticalSpaceRegular,
            ],
          ),
        ),
      ),
      viewModelBuilder: () => DTOpeningViewModel(),
    );
  }
}
