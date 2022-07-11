import 'package:flutter/material.dart';
import 'package:tamely/widgets/app_text.dart';
import 'package:tamely/util/Color.dart';

import '../ui/services/services_viewmodel.dart';

class RaiseTicket extends StatelessWidget {
  final ServicesViewModel model;

  const RaiseTicket({required this.model, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=>model.navigateToRaiseTickets(),
      child: Material(
        child: Container(
              margin: EdgeInsets.fromLTRB(20, 5, 20, 10),
              padding: EdgeInsets.fromLTRB(15,10,10,10),
              decoration: BoxDecoration(
                color: Color(0xFFCEE3E6),
                border: Border.all(
                  color: Colors.black38,
                ),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: colors.kcCaptionGreyColor,
                    blurRadius: 3.0, // soften the shadow
                    spreadRadius: 0.0, //extend the shadow
                    offset: Offset(
                      5, // Move to right 10  horizontally
                      5 , // Move to bottom 10 Vertically
                    ),
                  )
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppText.bodyBold("Raise a Ticket/Issue",color: Colors.black,),
                  Icon(Icons.newspaper),

                ],
              ),
        ),
      ),
    );
  }
}
