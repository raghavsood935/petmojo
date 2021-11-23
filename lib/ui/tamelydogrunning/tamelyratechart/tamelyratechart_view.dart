import 'package:flutter/material.dart';
import 'package:tamely/ui/tamelydogrunning/tamelyratechart/tamelyratechart_viewmodel.dart';
import 'package:tamely/util/String.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_text.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/util/Color.dart';

class TamelyRateChartView extends StatelessWidget {
  const TamelyRateChartView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<TamelyRateChartViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        backgroundColor: colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                verticalSpaceRegular,
                // rate chart
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RateItem(
                        title: perWalkTitle,
                        subtitle: perWalkSubtitle,
                        rate: perWalkRate,
                        rateLabel: perWalkRateLabel,
                      ),
                      verticalSpaceMedium,
                      RateItem(
                        title: perWeekOnceTitle,
                        subtitle: perWeekOnceSubtitle,
                        rate: perWeekOnceRate,
                        rateLabel: perWeekOnceRateLabel,
                      ),
                      verticalSpaceMedium,
                      RateItem(
                        title: perWeekTwiceTitle,
                        subtitle: perWeekTwiceSubtitle,
                        rate: perWeekTwiceRate,
                        rateLabel: perWeekTwiceRateLabel,
                      ),
                      verticalSpaceMedium,
                      RateItem(
                        title: perMonthOnceTitle,
                        subtitle: perMonthOnceSubtitle,
                        rate: perMonthOnceRate,
                        rateLabel: perMonthOnceRateLabel,
                      ),
                      verticalSpaceMedium,
                      RateItem(
                        title: perMonthTwiceTitle,
                        subtitle: perMonthTwiceSubtitle,
                        rate: perMonthTwiceRate,
                        rateLabel: perMonthTwiceRateLabel,
                      ),
                    ],
                  ),
                ),
                verticalSpaceMedium,
                const Divider(
                  color: colors.kcLightGreyBackground,
                  height: 5.0,
                  thickness: 5.0,
                ),
                verticalSpaceMedium,

                // booking button
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: GestureDetector(
                    onTap: model.toBookRunning,
                    child: Container(
                      width: double.infinity,
                      height: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: colors.primary,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Text(
                        bookButtonTitle,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                      ),
                    ),
                  ),
                ),
                verticalSpaceRegular,
              ],
            ),
          ),
        ),
      ),
      viewModelBuilder: () => TamelyRateChartViewModel(),
    );
  }
}

class RateItem extends StatelessWidget {
  const RateItem(
      {Key? key, this.title, this.subtitle, this.rate, this.rateLabel})
      : super(key: key);
  final String? title;
  final String? subtitle;
  final String? rate;
  final String? rateLabel;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppText.body1(title!),
              AppText.caption(
                subtitle!,
                color: colors.kcCaptionGreyColor,
              ),
            ],
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              AppText.body1(rate!),
              AppText.caption(
                rateLabel!,
                color: colors.kcCaptionGreyColor,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
