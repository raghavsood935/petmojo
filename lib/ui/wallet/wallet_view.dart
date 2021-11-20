import 'package:flutter/material.dart';
import 'package:tamely/util/String.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tamely/widgets/app_text.dart';
import 'package:tamely/util/ui_helpers.dart';

class WalletView extends StatelessWidget {
  const WalletView({Key? key}) : super(key: key);
  static const String text1 =
      "Tamely wallet will be activated once  you have 1000+ followers. You can monetise your account and earn money by gathering more followers.";
  static const String text2 =
      "This is especially good for wild life photographers to earn money for their beautiful art!";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.arrow_back_sharp,
          color: Colors.black,
        ),
        title: AppText.subheading(walletTitle),
        actions: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: SvgPicture.asset(
              "assets/images/wallet.svg",
              width: 20,
              height: 20,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppText.body(text1),
                verticalSpaceMedium,
                AppText.body(text2),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
