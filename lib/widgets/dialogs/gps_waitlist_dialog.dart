import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';

import '../app_text.dart';

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
    return WillPopScope(
        child: GestureDetector(
          onTap: () {
            FocusScopeNode currentFocus = FocusScope.of(context);
            if (!currentFocus.hasPrimaryFocus) {
              currentFocus.unfocus();
            }
          },
          child: ConstrainedBox(
            constraints: BoxConstraints(maxHeight: 450),
            child: Stack(
              children: [
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
                      child: Image.asset("assets/images/Pixel Cat.png"),
                    ),
                  ),
                ),
                AppText.body1("PetMojo GPS Tracker"),
                AppText.bodyBold("Join the waitlist now!"),
                AppText.caption(
                    "We will notify you once we release the new batch of Petmojo GPS tracker."),
              ],
            ),
          ),
        ),
        onWillPop: () async => true);
  }
}
