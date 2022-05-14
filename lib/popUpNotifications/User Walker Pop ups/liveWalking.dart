import 'package:confetti/confetti.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/util/Color.dart';
import '../../util/ImageConstant.dart';
import '../../util/ui_helpers.dart';
import '../../widgets/app_text.dart';


class liveWalking extends StatefulWidget {
  final String title;
  final String description;

  const liveWalking({
    Key? key,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  State<liveWalking> createState() => _liveWalkingState();
}

class _liveWalkingState extends State<liveWalking> {

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
      margin: EdgeInsets.only(right: 20,left: 20),
      // padding: EdgeInsets.all(0),
      width: double.infinity,
      height: 100,
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey, //color of border
            width: 2, //width of border
          ),
          borderRadius: BorderRadius.circular(10)
      ),
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
          Container(
            margin: EdgeInsets.fromLTRB(0, 5, 5, 0),
            child: Align(
              alignment:Alignment.topRight,
              child: Icon(Icons.close,size: 20,color: Color(0xFFC3C3C3),),
            ),
          ),

          Container(
            // padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Color(0xffffff),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        Text(
                          "LIVE",
                          style: theme.textTheme.subtitle2?.copyWith(
                              fontSize: 18,
                              color: Color(0xFFFF1741),
                              fontWeight: FontWeight.bold),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 3),
                          height: 11,
                          width: 11,
                          decoration: BoxDecoration(
                              color: Color(0xFFFF1741),
                              borderRadius: BorderRadius.circular(100)
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          widget.title,
                          style: theme.textTheme.subtitle2?.copyWith(
                              fontSize: 16,
                              color: colors.primary,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 14),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          flex: 7,
                          child: Text(
                            widget.description,
                            textAlign: TextAlign.center,
                            style: theme.textTheme.subtitle2?.copyWith(
                              fontSize: 12,
                              color:colors.primary,
                            ),
                          ),
                        ),

                        Expanded(
                          flex: 3,
                          child: Container(
                              margin: EdgeInsets.only(right: 12,bottom: 10),
                              child: TextButton(
                                onPressed: (){},
                                child: AppText.body1Bold(
                                  "Track Live",
                                  color: Colors.white,
                                ),
                                style: TextButton.styleFrom(
                                  backgroundColor: colors.primary,
                                  elevation: 8,
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 10,
                                    vertical: 6,
                                  ),
                                ),
                              )
                            // onPressed: () => model.onSlideServiceTap(0),
                            // child: AppText.bodyBold(
                            //   "See Report",
                            //   color: colors.white,
                            // ),
                            // style: TextButton.styleFrom(
                            //   backgroundColor: colors.primary,
                            //   elevation: 8,
                            //   padding: EdgeInsets.symmetric(
                            //     horizontal: 10,
                            //     vertical: 6,
                            //   ),
                            // )),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
