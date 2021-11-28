import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/ImageConstant.dart';
import 'package:tamely/widgets/app_text.dart';

class DropDownDetailsLayers extends StatefulWidget {
  const DropDownDetailsLayers(
      {Key? key,
      required this.title,
      required this.subTitle,
      required this.description,
      required this.innerWidgets})
      : super(key: key);

  final String title;
  final String subTitle;
  final String description;
  final List<Widget> innerWidgets;

  @override
  _DropDownDetailsLayersState createState() => _DropDownDetailsLayersState();
}

class _DropDownDetailsLayersState extends State<DropDownDetailsLayers> {
  final _navigationService = locator<NavigationService>();

  bool isOpen = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Column(
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  flex: 1,
                  child: IconButton(
                    onPressed: () => _navigationService.back(),
                    icon: Icon(Icons.arrow_back_outlined),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: AppText.title(
                    widget.title,
                    textAlign: TextAlign.center,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: IconButton(
                    onPressed: () => setState(() {
                      isOpen = !isOpen;
                    }),
                    icon: Icon(
                      isOpen ? Icons.arrow_drop_up : Icons.arrow_drop_down,
                      color: colors.primary,
                    ),
                  ),
                ),
              ],
            ),
            Divider(color: colors.kcLightGreyColor, height: 1.0),
            Visibility(
              visible: isOpen,
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(
                  left: 30,
                  right: 30,
                  bottom: 15,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      loginBannerImgPath,
                      width: 120,
                      height: 70,
                    ),
                    AppText.title(
                      widget.subTitle,
                      textAlign: TextAlign.center,
                    ),
                    AppText.caption(
                      widget.description,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            ColoredBox(
              color: colors.white,
              child: Padding(
                padding: EdgeInsets.only(top: 5),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: widget.innerWidgets,
                ),
              ),
            )
          ],
        ),
      )),
      backgroundColor: colors.lightBackgroundColor,
    );
  }
}
