import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/ui/e_commerce/product_bookings/tabs/my_product_booking_tab_view_model.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_text.dart';
import 'package:tamely/widgets/custom_circle_avatar.dart';

class MyProductBookingTabView extends StatelessWidget {
  const MyProductBookingTabView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<MyProductBookingTabViewModel>.reactive(
      viewModelBuilder: () => MyProductBookingTabViewModel(),
      builder: (context, model, child) => ListView.separated(
        shrinkWrap: true,
        physics: ScrollPhysics(),
        itemCount: model.listOfBookingModel.length,
        itemBuilder: (context, index) => ListTile(
          isThreeLine: true,
          onTap: () => model.goToProductInfo(index),
          leading: CustomCircularAvatar(
            radius: 25,
            imgPath: model.listOfBookingModel[index].userProfileImage,
            isHuman: true,
          ),
          title: AppText.body1(model.listOfBookingModel[index].userProfileName),
          subtitle: AppText.caption(
              "For ${model.listOfBookingModel[index].productFor}\n${model.listOfBookingModel[index].date}"),
        ),
        separatorBuilder: (context, index) => spacedDividerSmall,
      ),
    );
  }
}
