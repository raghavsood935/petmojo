import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/util/Color.dart';
import '../../util/ImageConstant.dart';
import '../../util/ui_helpers.dart';
import '../../widgets/app_text.dart';

class reportGenerated extends StatefulWidget {
  final DialogRequest dialogRequest;
  final Function(DialogResponse) onDialogTap;

  const reportGenerated({
    Key? key,
    required this.dialogRequest,
    required this.onDialogTap,
  }) : super(key: key);

  @override
  State<reportGenerated> createState() => _reportGeneratedState();
}

class _reportGeneratedState extends State<reportGenerated> {
  @override
  void initState() {
    super.initState();
    _confettiController.play();
  }

  late ConfettiController _confettiController = ConfettiController();
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      child: WillPopScope(
          child: GestureDetector(
            onTap: () {
              FocusScopeNode currentFocus = FocusScope.of(context);
              if (!currentFocus.hasPrimaryFocus) {
                currentFocus.unfocus();
              }
            },
            child: ConstrainedBox(
              constraints: BoxConstraints(maxHeight: 250),
              child: Stack(
                children: [
                  Positioned(
                    top: 20,
                    left: 10,
                    child: Opacity(
                      opacity: 0.15,
                      child: Transform.rotate(
                        angle: -6.5,
                        child: Image.asset(
                          animalFootPrintImgPath,
                          height: 70,
                          width: 70,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 30,
                    right: 28,
                    child: Opacity(
                      opacity: 0.15,
                      child: Transform.rotate(
                        angle: -6.5,
                        child: Image.asset(
                          animalFootPrintImgPath,
                          height: 40,
                          width: 40,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 30,
                    right: 50,
                    child: Opacity(
                      opacity: 0.15,
                      child: Transform.rotate(
                        angle: -6.5,
                        child: Image.asset(
                          animalFootPrintImgPath,
                          height: 100,
                          width: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),

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
                        child: Icon(
                          Icons.check,
                          color: Colors.white,
                          size: 32,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 10, 10, 0),
                    child: Align(
                      alignment:Alignment.topRight,
                      child: Icon(Icons.close,size: 20,color: Color(0xFFC3C3C3),),
                    ),
                  ),
                  // Positioned(
                  //   top: 20,
                  //   left: 20,
                  //   child: Transform.rotate(
                  //     angle: 270,
                  //     child: Opacity(
                  //       opacity: 0.2,
                  //       child: Image.asset(
                  //         animalFootPrintImgPath,
                  //         scale: 0.4,
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  // Positioned(
                  //   bottom: -10,
                  //   right: 20,
                  //   child: Transform.rotate(
                  //     angle: 250,
                  //     child: Opacity(
                  //       opacity: 0.1,
                  //       child: Image.asset(
                  //         animalFootPrintImgPath,
                  //         scale: 0.3,
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Color(0xffffff),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "Report Generated",
                          style: theme.textTheme.subtitle2?.copyWith(
                              fontSize: 20,
                              color: Color(0xFF00031D),
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          widget.dialogRequest.title ?? "Title",
                          style: theme.textTheme.subtitle2?.copyWith(
                              fontSize: 14,
                              color: colors.primary,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Text(
                          widget.dialogRequest.description ?? "Description",
                          textAlign: TextAlign.center,
                          style: theme.textTheme.subtitle2?.copyWith(
                            fontSize: 14,
                            color: Color(0xFF00031D),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        verticalSpaceSmall,
                        GestureDetector(
                          onTap: () {
                            widget.onDialogTap(DialogResponse(confirmed: false));
                          },
                          child: GestureDetector(
                            onTap: () {
                              widget
                                  .onDialogTap(DialogResponse(confirmed: false));
                            },
                            child: Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: colors.primary,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: AppText.titleBold("Check Now",
                                  color: colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: ConfettiWidget(
                      confettiController: _confettiController,
                      shouldLoop: true,
                      blastDirectionality: BlastDirectionality.explosive,
                    ),
                  ),
                ],
              ),
            ),
          ),
          onWillPop: () async => true),
    );
  }
}

