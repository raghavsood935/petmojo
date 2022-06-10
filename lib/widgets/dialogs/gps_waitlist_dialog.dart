import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/util/Color.dart';
import '../app_input_field.dart';
import '../app_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:tamely/widgets/app_text.dart';

class GPSWaitlistDialog extends StatefulWidget {
  final DialogRequest dialogRequest;
  final Function(DialogResponse) onDialogTap;

  const GPSWaitlistDialog({
    Key? key,
    required this.dialogRequest,
    required this.onDialogTap,
  }) : super(key: key);

  @override
  _GPSWaitlistDialogState createState() => _GPSWaitlistDialogState();
}

class _GPSWaitlistDialogState extends State<GPSWaitlistDialog> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return WillPopScope(
        child: GestureDetector(
          onTap: () {
            FocusScopeNode currentFocus = FocusScope.of(context);
            if (!currentFocus.hasPrimaryFocus) {
              currentFocus.unfocus();
            }
          },
          child: ConstrainedBox(
            constraints: BoxConstraints(maxHeight: 350),
            child: Stack(
              children: [
                //
                Align(
                  alignment: Alignment.topCenter,
                  child: Transform.translate(
                    offset: Offset(0, -32),
                    child: Container(
                      height: 64,
                      width: 64,
                      decoration: BoxDecoration(
                        color: Color(0xFFFD799A),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Image.asset("assets/images/PixelCat.png"),
                    ),
                  ),
                ),
                //
                Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 10, 0),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Icon(
                      Icons.close,
                      size: 20,
                      color: Color(0xFFC3C3C3),
                    ),
                  ),
                ),
                //
                //
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Color(0xffffff),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Expanded(
                          child: Text(
                            "PetMojo GPS Tracker",
                            style: theme.textTheme.subtitle2?.copyWith(
                                fontSize: 14,
                                color: colors.lightBlack,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            "Join the waitlist now!",
                            style: theme.textTheme.subtitle2?.copyWith(
                                fontSize: 20,
                                color: Color(0xFF00031D),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Expanded(
                          child: AppText.body1(
                            "We will notify you once we release the new batch of Petmojo GPS tracker.",
                          ),
                        ),
                        //
                        AppInputField(
                          fillColor: Colors.white,
                          hint: "Full Name",
                          isBoxBorder: true,
                          textInputType: TextInputType.name,
                          controller: null,
                        ),
                        //
                        //
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              widget
                                  .onDialogTap(DialogResponse(confirmed: true));
                            },
                            child: Container(
                              height: 50,
                              width: 100,
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: colors.primary,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: AppText.titleBold(
                                "Done",
                                color: colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                //
                // Positioned(
                //   top: 35,
                //   child: Column(
                //     children: [
                //       AppText.body1("PetMojo GPS Tracker"),
                //       AppText.bodyBold("Join the waitlist now!"),
                //       AppText.caption(
                //           "We will notify you once we release the new batch of Petmojo GPS tracker."),
                //     ],
                //   ),
                // ),
              ],
            ),
          ),
        ),
        onWillPop: () async => true);
  }
}
