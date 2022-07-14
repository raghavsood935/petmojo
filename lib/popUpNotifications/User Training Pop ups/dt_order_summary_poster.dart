import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:tamely/util/Color.dart';

class OrderSummaryPoster extends StatefulWidget {
  final String title;
  final String description;
  final String byline;

  const OrderSummaryPoster({
    Key? key,
    required this.title,
    required this.description,
    required this.byline,
  }) : super(key: key);

  @override
  State<OrderSummaryPoster> createState() => _OrderSummaryPosterState();
}

class _OrderSummaryPosterState extends State<OrderSummaryPoster> {
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
      margin: EdgeInsets.only(right: 20, left: 20),
      width: double.infinity,
      height: 100,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/dialog_background.png'),
              fit: BoxFit.fill),
          border: Border.all(
            color: Colors.grey, //color of border
            width: 2, //width of border
          ),
          borderRadius: BorderRadius.circular(10)),
      child: Stack(
        children: [
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
                  height: 5,
                ),
                Expanded(
                  child: Container(
                    // margin: EdgeInsets.only(left: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          widget.title,
                          style: theme.textTheme.subtitle2?.copyWith(
                              fontSize: 14,
                              color: colors.primary,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    // margin: EdgeInsets.only(left: 10),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            widget.description,
                            textAlign: TextAlign.center,
                            style: theme.textTheme.subtitle2?.copyWith(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF4ED387),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            widget.byline,
                            textAlign: TextAlign.center,
                            style: theme.textTheme.subtitle2?.copyWith(
                              fontSize: 10,
                              fontWeight: FontWeight.normal,
                              color: Color(0xFF4ED387),
                            ),
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
