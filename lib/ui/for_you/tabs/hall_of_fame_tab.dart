import 'package:flutter/material.dart';
import 'package:tamely/widgets/app_text.dart';

class HallOfFameTab extends StatefulWidget {
  const HallOfFameTab({Key? key}) : super(key: key);

  @override
  _HallOfFameTabState createState() => _HallOfFameTabState();
}

class _HallOfFameTabState extends State<HallOfFameTab> {
  @override
  Widget build(BuildContext context) {
    return Center(child: AppText.body1Bold("Under development"));
  }
}
