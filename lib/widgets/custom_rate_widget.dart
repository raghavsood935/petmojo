import 'package:flutter/material.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/widgets/app_text.dart';

class CustomRateView extends StatefulWidget {
  CustomRateView({Key? key, required this.onRateChange}) : super(key: key);

  Function(int i) onRateChange;

  @override
  _CustomRateViewState createState() => _CustomRateViewState();
}

class _CustomRateViewState extends State<CustomRateView> {
  int rate = 0;
  List<bool> rateSelected = [false, false, false, false, false];
  List<int> totalRate = [1, 2, 3, 4, 5];

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   int i = 0;
  //   while (i < 5) {
  //     rateSelected.add(false);
  //     totalRate.add(i + 1);
  //     i++;
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
      child: Row(
        children: totalRate
            .map(
              (i) => item(
                i,
                rateSelected[i - 1],
              ),
            )
            .toList(),
      ),
    );
  }

  Widget item(int position, bool selected) {
    return GestureDetector(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            height: 50,
            width: 50,
            margin: EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: selected ? colors.primary : colors.kcLightGreyColor,
            ),
            child: Center(
              child: AppText.body1(
                position.toString(),
                color: selected ? colors.white : colors.black,
              ),
            ),
          ),
          Visibility(
            visible: position == 1,
            child: AppText.caption("Least"),
          ),
          Visibility(
            visible: position == 5,
            child: AppText.caption("Most"),
          ),
          Visibility(
            visible: position != 5 && position != 1,
            child: AppText.caption("  "),
          ),
        ],
      ),
      onTap: () => onRankSelected(position - 1),
    );
  }

  onRankSelected(int position) {
    setState(() {
      rateSelected.clear();
      for (int i = 0; i < 5; i++) {
        if (i <= position) {
          rateSelected.add(true);
        } else {
          rateSelected.add(false);
        }
      }
    });
    widget.onRateChange(position);
  }
}
