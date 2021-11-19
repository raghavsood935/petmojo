import 'package:flutter/material.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/styles.dart';

const TextAlign kcStartText = TextAlign.start;

class AppText extends StatelessWidget {
  final String text;
  final TextStyle style;
  final TextAlign? textAlign;
  late final bool? isSingleLined;

  AppText.headingOne(this.text,
      {this.textAlign,
      this.isSingleLined,
      Color color = colors.kcPrimaryTextColor})
      : style = heading1Style.copyWith(color: color);

  AppText.headingTwo(this.text,
      {this.textAlign,
      this.isSingleLined,
      Color color = colors.kcPrimaryTextColor})
      : style = heading2Style.copyWith(color: color);

  AppText.headingThree(this.text,
      {this.textAlign,
      this.isSingleLined,
      Color color = colors.kcPrimaryTextColor})
      : style = heading3Style.copyWith(color: color);

  AppText.headline(this.text,
      {this.textAlign,
      this.isSingleLined,
      Color color = colors.kcPrimaryTextColor})
      : style = headlineStyle.copyWith(color: color);

  AppText.subheading(this.text,
      {this.textAlign,
      this.isSingleLined,
      Color color = colors.kcPrimaryTextColor})
      : style = subheadingStyle.copyWith(color: color);

  AppText.caption(this.text,
      {this.textAlign,
      this.isSingleLined,
      Color color = colors.kcPrimaryTextColor})
      : style = captionStyle.copyWith(color: color);

  AppText.overline(this.text,
      {this.textAlign,
      this.isSingleLined,
      Color color = colors.kcPrimaryTextColor})
      : style = overlineStyle.copyWith(color: color);

  AppText.body1(this.text,
      {this.textAlign,
      this.isSingleLined,
      Color color = colors.kcPrimaryTextColor})
      : style = body1Style.copyWith(color: color);

  AppText.body1Bold(this.text,
      {this.textAlign,
      this.isSingleLined,
      Color color = colors.kcPrimaryTextColor})
      : style = body1BoldStyle.copyWith(color: color);

  AppText.body2(this.text,
      {this.textAlign,
      this.isSingleLined,
      Color color = colors.kcPrimaryTextColor})
      : style = body2Style.copyWith(color: color);

  AppText.body(this.text,
      {this.textAlign,
      this.isSingleLined,
      Color color = colors.kcPrimaryTextColor})
      : style = bodyStyle.copyWith(color: color);

  @override
  Widget build(BuildContext context) {
    late TextOverflow overflow;
    if (isSingleLined == null || !isSingleLined!) {
      overflow = TextOverflow.clip;
    } else {
      overflow = TextOverflow.ellipsis;
    }

    return Text(
      text,
      style: style.copyWith(),
      overflow: overflow,
      textAlign: textAlign ?? TextAlign.start,
    );
  }
}
