import 'package:flutter/material.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_text.dart';

// class FullScreenLoadingIndicator {
//
//   BuildContext context;
//
//   FullScreenLoadingIndicator(this.context);
//
//   bool isDialogOpen = false;
//
//   showLoadingDialog() {
//     closeLoadingDialog();
//     isDialogOpen = true;
//     return showDialog(
//       context: context,
//       builder: (ctx) => Dialog(
//         child: Container(
//           width: double.maxFinite,
//           height: double.maxFinite,
//           child: Center(
//             child: Container(
//               padding: EdgeInsets.all(50),
//               child: CircularProgressIndicator(),
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(15),
//                 color: colors.white,
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   closeLoadingDialog(){
//     if(isDialogOpen){
//       Navigator.pop(context);
//     }
//   }
// }

class FullScreenLoadingDialog extends StatelessWidget {
  const FullScreenLoadingDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Row(
        children: [
          CircularProgressIndicator(
            color: colors.primary,
          ),
          horizontalSpaceMedium,
          AppText.body2("Loading..."),
        ],
      ),
    );
  }
}
