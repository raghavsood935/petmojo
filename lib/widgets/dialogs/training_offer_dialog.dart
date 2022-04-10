import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_text.dart';

class TrainingOfferDialog extends StatefulWidget {
  final DialogRequest dialogRequest;

  const TrainingOfferDialog({
    Key? key,
    required this.dialogRequest,
  }) : super(key: key);

  @override
  _TrainingOfferDialogState createState() => _TrainingOfferDialogState();
}

class _TrainingOfferDialogState extends State<TrainingOfferDialog> {
  @override
  void initState() {
    super.initState();
  }

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
          child: SingleChildScrollView(
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
                      child: Icon(
                        Icons.check,
                        color: Colors.white,
                        size: 32,
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Container(
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
                          widget.dialogRequest.title ?? "Title",
                          style: theme.textTheme.subtitle2?.copyWith(
                              fontSize: 14,
                              color: Color(0xFF00031D),
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
                        SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            child: Column(
                              children: [
                                Container(
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        color: Color(0xFFFFCE9E),
                                        borderRadius: BorderRadius.circular(4),
                                        border: Border.all(color: Colors.grey)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        AppText.bodyBold("Puppy Training"),
                                        Column(
                                          children: [
                                            Text(
                                              "₹10.788",
                                              style: theme.textTheme.caption
                                                  ?.copyWith(
                                                fontSize: 14,
                                                decoration:
                                                    TextDecoration.lineThrough,
                                                color: Color(0xFF00031D),
                                              ),
                                            ),
                                            AppText.bodyBig("₹9,588"),
                                          ],
                                        ),
                                      ],
                                    )),
                                verticalSpaceSmall,
                                Container(
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        color: Color(0xFFFFCE9E),
                                        borderRadius: BorderRadius.circular(4),
                                        border: Border.all(color: Colors.grey)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        AppText.bodyBold("Basic Obedience"),
                                        Column(
                                          children: [
                                            Text(
                                              "₹21,576",
                                              style: theme.textTheme.caption
                                                  ?.copyWith(
                                                fontSize: 14,
                                                decoration:
                                                    TextDecoration.lineThrough,
                                                color: Color(0xFF00031D),
                                              ),
                                            ),
                                            AppText.bodyBig("₹18,000"),
                                          ],
                                        ),
                                      ],
                                    )),
                                verticalSpaceSmall,
                                Container(
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        color: Color(0xFFFFCE9E),
                                        borderRadius: BorderRadius.circular(4),
                                        border: Border.all(color: Colors.grey)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          child: AppText.bodyBold(
                                              "Advance Obedience, Behavioural and Guarding Training"),
                                        ),
                                        horizontalSpaceSmall,
                                        Column(
                                          children: [
                                            Text(
                                              "₹32,364",
                                              style: theme.textTheme.caption
                                                  ?.copyWith(
                                                fontSize: 14,
                                                decoration:
                                                    TextDecoration.lineThrough,
                                                color: Color(0xFF00031D),
                                              ),
                                            ),
                                            AppText.bodyBig("₹25,560"),
                                          ],
                                        ),
                                      ],
                                    )),
                                verticalSpaceSmall,
                                Container(
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        color: Color(0xFFFFCE9E),
                                        borderRadius: BorderRadius.circular(4),
                                        border: Border.all(color: Colors.grey)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          child: AppText.bodyBold(
                                              "Elite STAGE SHOW obedience"),
                                        ),
                                        horizontalSpaceSmall,
                                        Column(
                                          children: [
                                            Text(
                                              "₹43,152",
                                              style: theme.textTheme.caption
                                                  ?.copyWith(
                                                fontSize: 14,
                                                decoration:
                                                    TextDecoration.lineThrough,
                                                color: Color(0xFF00031D),
                                              ),
                                            ),
                                            AppText.bodyBig("₹32,640"),
                                          ],
                                        ),
                                      ],
                                    )),
                              ],
                            )),
                        verticalSpaceSmall,
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: Container(
                            padding: EdgeInsets.all(10),
                            child: AppText.body1("Check Plans",
                                color: Color(0xFFFD799A)),
                          ),
                        ),
                        // widget.dialogRequest.data != null
                        //     ? Column(
                        //         children: [
                        //           Padding(
                        //             padding:
                        //                 const EdgeInsets.only(bottom: 10.0),
                        //             child: Text(
                        //               "Let us know how we're doing!"
                        //                   .toUpperCase(),
                        //               textAlign: TextAlign.center,
                        //               style:
                        //                   theme.textTheme.subtitle2?.copyWith(
                        //                 fontSize: 14,
                        //                 color: Color(0xFFFD799A),
                        //               ),
                        //             ),
                        //           ),
                        //           Row(
                        //             mainAxisAlignment: MainAxisAlignment.center,
                        //             children: [
                        //               GestureDetector(
                        //                 onTap : () => setState(() {
                        //                   _givenRating = 1;
                        //                   widget.dialogRequest.data(1);
                        //                 }),
                        //                 child: Icon(
                        //                   Icons.star,
                        //                   color:  _givenRating >= 1 ? Color(0xFFFD799A) : Colors.grey,
                        //                   size: 19,
                        //                 ),
                        //               ),
                        //               GestureDetector(
                        //                 onTap : () => setState(() {
                        //                   _givenRating = 2;
                        //                   widget.dialogRequest.data(2);
                        //                 }),
                        //                 child: Icon(
                        //                   Icons.star,
                        //                   color:  _givenRating >= 2 ? Color(0xFFFD799A) : Colors.grey,
                        //                   size: 19,
                        //                 ),
                        //               ),
                        //               GestureDetector(
                        //                 onTap : () => setState(() {
                        //                   _givenRating = 3;
                        //                   widget.dialogRequest.data(3);
                        //                 }),
                        //                 child: Icon(
                        //                   Icons.star,
                        //                   color:  _givenRating >= 3 ? Color(0xFFFD799A) : Colors.grey,
                        //                   size: 19,
                        //                 ),
                        //               ),
                        //               GestureDetector(
                        //                 onTap : () => setState(() {
                        //                   _givenRating = 4;
                        //                   widget.dialogRequest.data(4);
                        //                 }),
                        //                 child: Icon(
                        //                   Icons.star,
                        //                   color:  _givenRating >= 4 ? Color(0xFFFD799A) : Colors.grey,
                        //                   size: 19,
                        //                 ),
                        //               ),
                        //               GestureDetector(
                        //                 onTap : () => setState(() {
                        //                   _givenRating = 5;
                        //                   widget.dialogRequest.data(5);
                        //                 }),
                        //                 child: Icon(
                        //                   Icons.star,
                        //                   color:  _givenRating >= 5 ? Color(0xFFFD799A) : Colors.grey,
                        //                   size: 19,
                        //                 ),
                        //               ),
                        //             ],
                        //           ),
                        //           // Button for "Check Invoice"
                        //           Padding(
                        //             padding: const EdgeInsets.only(top: 10.0),
                        //             child: TextButton(
                        //               onPressed: () {
                        //                 // TODO : Implement actual invoice opening
                        //               },
                        //               style: TextButton.styleFrom(
                        //                 backgroundColor: Color(0xFFFD799A),
                        //                 shape: RoundedRectangleBorder(
                        //                   borderRadius:
                        //                       BorderRadius.circular(10),
                        //                 ),
                        //               ),
                        //               child: Text(
                        //                 "Check Invoice",
                        //                 style: theme.textTheme.button?.copyWith(
                        //                     fontSize: 14, color: Colors.white),
                        //               ),
                        //             ),
                        //           )
                        //         ],
                        //       )
                        //     : SizedBox(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        onWillPop: () async => true);
  }
}
