import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tamely/util/String.dart';
import 'package:tamely/widgets/app_text.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/util/Color.dart';

class SettingsHumanView extends StatefulWidget {
  const SettingsHumanView({Key? key}) : super(key: key);

  @override
  _SettingsHumanViewState createState() => _SettingsHumanViewState();
}

class _SettingsHumanViewState extends State<SettingsHumanView> {
  bool private = false;
  bool lessData = true;
  bool highQuality = true;
  bool isMale = true;
  bool isFemale = false;
  bool isOthers = false;
  final String accVerify =
      "For certified NGOs or publicly known people, please drop an email at support@tamely.in to get certified. NGOs will be able to get donations directly from users.";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.5,
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.arrow_back_sharp,
          color: Colors.black,
        ),
        title: AppText.subheading(settingsTitle),
        actions: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: SvgPicture.asset(
              "assets/images/setting.svg",
              width: 20,
              height: 20,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: AppText.subheading(
                "Privacy Settings",
              ),
            ),
            SwitchListTile(
              activeTrackColor: Colors.green,
              value: private,
              onChanged: (value) {
                setState(() {
                  private = !private;
                });
              },
              title: AppText.body("Private Account"),
            ),
            ListTile(
              title: AppText.body("Blocked Accounts"),
              trailing: IconButton(
                icon: Icon(Icons.arrow_forward_ios_sharp),
                onPressed: () {},
              ),
            ),
            spacedDivider,
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: AppText.subheading(
                "Security Settings",
              ),
            ),
            ListTile(
              title: AppText.body("Email"),
              trailing: AppText.body1("rohansakore123@gmail.com"),
            ),
            ListTile(
              title: AppText.body("Phone Number"),
              trailing: GestureDetector(
                onTap: () {},
                child: AppText.body(
                  "+ Add",
                  color: colors.primary,
                ),
              ),
            ),
            ListTile(
              title: AppText.body("Date of Birth"),
              trailing: GestureDetector(
                onTap: () {},
                child: AppText.body(
                  "+ Add",
                  color: colors.primary,
                ),
              ),
            ),
            spacedDivider,
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: AppText.subheading(
                "Account Settings",
              ),
            ),
            ListTile(
              title: AppText.body("Language"),
              trailing: AppText.body1("English"),
            ),
            spacedDivider,
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: AppText.subheading(
                "Account Verification",
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: AppText.body(accVerify),
            ),
            spacedDivider,
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: AppText.subheading(
                "General Info",
              ),
            ),
            ListTile(
              title: AppText.body("Date Joined"),
              trailing: AppText.body1("12 Jan 2020"),
            ),
            ListTile(
              title: AppText.body("Country"),
              trailing: AppText.body1("India"),
            ),
            ListTile(
              title: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  AppText.body("Gender"),
                  Padding(
                    padding: EdgeInsets.only(left: 120),
                    child: Row(
                      children: [
                        TagsWidget(
                          onMainButtonTapped: () {
                            setState(() {
                              isMale = true;
                              isFemale = false;
                              isOthers = false;
                            });
                          },
                          mainButtonTitle: "M",
                          bgColor: isMale ? colors.primary : Colors.white,
                          borderColor: isMale ? colors.primary : Colors.black,
                          textColor:
                              isMale ? Colors.white : colors.kcPrimaryTextColor,
                        ),
                        horizontalSpaceSmall,
                        TagsWidget(
                          onMainButtonTapped: () {
                            setState(() {
                              isMale = false;
                              isFemale = true;
                              isOthers = false;
                            });
                          },
                          mainButtonTitle: "F",
                          bgColor: isFemale ? colors.primary : Colors.white,
                          borderColor: isFemale ? colors.primary : Colors.black,
                          textColor: isFemale
                              ? Colors.white
                              : colors.kcPrimaryTextColor,
                        ),
                        horizontalSpaceSmall,
                        TagsWidget(
                          onMainButtonTapped: () {
                            setState(() {
                              isMale = false;
                              isFemale = false;
                              isOthers = true;
                            });
                          },
                          mainButtonTitle: "O",
                          bgColor: isOthers ? colors.primary : Colors.white,
                          borderColor: isOthers ? colors.primary : Colors.black,
                          textColor: isOthers
                              ? Colors.white
                              : colors.kcPrimaryTextColor,
                        ),
                        horizontalSpaceSmall,
                      ],
                    ),
                  ),
                ],
              ),
            ),
            spacedDivider,
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: AppText.subheading(
                "Data Usage",
              ),
            ),
            SwitchListTile(
              activeTrackColor: Colors.green,
              value: lessData,
              onChanged: (value) {
                setState(() {
                  lessData = !lessData;
                });
              },
              title: AppText.body("Use less mobile data"),
            ),
            SwitchListTile(
              activeTrackColor: Colors.green,
              value: highQuality,
              onChanged: (value) {
                setState(() {
                  highQuality = !highQuality;
                });
              },
              title: AppText.body("High quality uploads"),
            ),
            spacedDivider,
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: AppText.subheading(
                "Profile",
              ),
            ),
            ListTile(
              title: AppText.body(
                  "Profile of paws who went to heaven (0 profiles)"),
              trailing: IconButton(
                icon: Icon(Icons.arrow_forward_ios_sharp),
                onPressed: () {},
              ),
            ),
            spacedDivider,
            AppText.subheading("Logout"),
            spacedDivider,
            verticalSpaceLarge,
          ],
        ),
      ),
    );
  }
}

class TagsWidget extends StatelessWidget {
  const TagsWidget({
    Key? key,
    required this.onMainButtonTapped,
    required this.mainButtonTitle,
    this.bgColor = colors.primary,
    this.textColor = Colors.white,
    this.borderColor = Colors.transparent,
  }) : super(key: key);

  final VoidCallback onMainButtonTapped;
  final String mainButtonTitle;
  final Color bgColor;
  final Color textColor;
  final Color borderColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 35,
      height: 35,
      margin: const EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        border: Border.all(color: borderColor),
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextButton(
        onPressed: onMainButtonTapped,
        child: AppText.body1(mainButtonTitle, color: textColor),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(bgColor),
          // padding: MaterialStateProperty.all(const EdgeInsets.all(12)),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
          ),
        ),
      ),
    );
  }
}
