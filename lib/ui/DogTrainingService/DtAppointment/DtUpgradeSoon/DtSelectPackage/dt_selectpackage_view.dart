import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/String.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_text.dart';
import 'dt_selectpackage_viewmodel.dart';

class DTSelectPackageView extends StatelessWidget {
  const DTSelectPackageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DTSelectPackageViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        backgroundColor: colors.white,
        body: SafeArea(
          child: Column(
            children: [
              verticalSpaceRegular,
              // Heading
              Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  Positioned(
                    left: 25,
                    child: IconButton(
                      padding: EdgeInsets.zero,
                      alignment: Alignment.centerLeft,
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                      ),
                      onPressed: model.navigateBack,
                    ),
                  ),
                  Center(
                    child: AppText.headingThree(
                      "Chat",
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              spacedDividerSmall,
              verticalSpaceSmall,
              //body
            ],
          ),
        ),
      ),
      viewModelBuilder: () => DTSelectPackageViewModel(),
    );
  }
}
