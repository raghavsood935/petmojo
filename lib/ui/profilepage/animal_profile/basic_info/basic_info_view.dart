import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/app/app.router.dart';
import 'package:tamely/models/my_animal_model.dart';
import 'package:tamely/ui/profilepage/animal_profile/basic_info/general_info/general_info_view.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/widgets/app_text.dart';
import 'package:tamely/widgets/edit_button.dart';

import 'preferences/preferences_view.dart';

class AnimalBasicInfo extends StatefulWidget {
  AnimalBasicInfo(
      {Key? key, required this.animalModelResponse, required this.petToken})
      : super(key: key);

  MyAnimalModelResponse animalModelResponse;
  String petToken;

  List<Tab> _tabsTitle = [
    Tab(
      text: "General Info",
    ),
    Tab(
      text: "Preferences",
    )
  ];

  final _navigationService = locator<NavigationService>();

  @override
  _AnimalBasicInfoState createState() => _AnimalBasicInfoState();
}

class _AnimalBasicInfoState extends State<AnimalBasicInfo> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: colors.white,
          title: AppText.body2("Basic Info"),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: colors.black,
            ),
            onPressed: () => widget._navigationService.back(),
          ),
          // actions: [
          //   GestureDetector(
          //     child: Padding(
          //       padding: const EdgeInsets.only(right: 10),
          //       child: EditButton(),
          //     ),
          //     onTap: () async {
          //       var result = await _navigationService.navigateTo(
          //         Routes.createAnimalPageView,
          //         arguments: CreateAnimalPageViewArguments(
          //           petId: widget.animalModelResponse.Id!,
          //           isEdit: true,
          //         ),
          //       );
          //       if (result == 1) {
          //         _navigationService.back(result: 1);
          //       }
          //     },
          //   )
          // ],
          bottom: TabBar(
            tabs: widget._tabsTitle,
          ),
        ),
        body: TabBarView(
          children: [
            GeneralInfoView(
              animalModelResponse: widget.animalModelResponse,
              petToken: widget.petToken,
            ),
            PreferencesView(
              petId: widget.animalModelResponse.Id!,
              petToken: widget.petToken,
            )
          ],
        ),
      ),
    );
  }
}
