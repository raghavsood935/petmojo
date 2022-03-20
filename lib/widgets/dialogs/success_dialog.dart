import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';

class SuccessDialog extends StatefulWidget {
  final DialogRequest dialogRequest;
  final Function(DialogResponse) onDialogTap;

  const SuccessDialog(
      {Key? key, required this.dialogRequest, required this.onDialogTap})
      : super(key: key);

  @override
  _SuccessDialogState createState() => _SuccessDialogState();
}

class _SuccessDialogState extends State<SuccessDialog> {
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
                          height: 15,
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
                        widget.dialogRequest.data == "ShowDialog"
                            ? Column(
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(bottom: 10.0),
                                    child: Text(
                                      "Let us know how we're doing!"
                                          .toUpperCase(),
                                      textAlign: TextAlign.center,
                                      style:
                                          theme.textTheme.subtitle2?.copyWith(
                                        fontSize: 14,
                                        color: Color(0xFFFD799A),
                                      ),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Color(0xFFFD799A),
                                        size: 19,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Color(0xFFFD799A),
                                        size: 19,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Color(0xFFFD799A),
                                        size: 19,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Color(0xFFFD799A),
                                        size: 19,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Color(0xFFFD799A),
                                        size: 19,
                                      ),
                                    ],
                                  ),
                                  // Button for "Check Invoice"
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10.0),
                                    child: TextButton(
                                      onPressed: () {
                                        // TODO : Implement actual invoice opening
                                      },
                                      style: TextButton.styleFrom(
                                        backgroundColor: Color(0xFFFD799A),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                      ),
                                      child: Text(
                                        "Check Invoice",
                                        style: theme.textTheme.button?.copyWith(
                                            fontSize: 14, color: Colors.white),
                                      ),
                                    ),
                                  )
                                ],
                              )
                            : SizedBox(),
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
