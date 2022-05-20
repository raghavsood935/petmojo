import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/enum/DialogType.dart';
import 'package:tamely/popUpNotifications/User%20Training%20Pop%20ups/liveTraining.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_text.dart';
import '../../../../widgets/app_input_field.dart';
import 'dt_dogtrainingbooking_viewmodel.dart';

class DTDogTrainingBookingView extends StatefulWidget {
  const DTDogTrainingBookingView({Key? key}) : super(key: key);

  @override
  State<DTDogTrainingBookingView> createState() =>
      _DTDogTrainingBookingViewState();
}

class _DTDogTrainingBookingViewState extends State<DTDogTrainingBookingView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DTDogTrainingBookingViewModel>.reactive(
      onModelReady: (model) async {
        await model.getPets();
        await model.getFreeWalkStatus();
        model.checkValid();
        await model.showSpecialOfferDialog();
      },
      onDispose: (model) {
        model.dispose();
      },
      viewModelBuilder: () => DTDogTrainingBookingViewModel(),
      builder: (context, model, child) => Scaffold(
        backgroundColor: colors.white,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                verticalSpaceRegular,
                // Heading
                Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    Positioned(
                      left: 0,
                      child: IconButton(
                        padding: EdgeInsets.zero,
                        alignment: Alignment.centerLeft,
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          model.navigateBack();
                          SystemChannels.textInput
                              .invokeMethod('TextInput.hide');
                        },
                      ),
                    ),
                    Center(
                      child: AppText.headingThree(
                        model.titles[model.currentIndex],
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                verticalSpaceRegular,
                //spacedDividerTiny,

                // Page Indication
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Container(
                        margin:
                            EdgeInsets.only(top: 8.0, right: 8.0, bottom: 8.0),
                        height: 5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          color: model.currentStep[0]
                              ? colors.primary
                              : colors.kcMediumGreyColor,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin:
                            EdgeInsets.only(left: 8.0, top: 8.0, bottom: 8.0),
                        height: 5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          color: model.currentStep[1]
                              ? colors.primary
                              : colors.kcMediumGreyColor,
                        ),
                      ),
                    ),
                  ],
                ),
                verticalSpaceSmall,

                // Body
                Expanded(
                  child: PageView(
                    scrollDirection: Axis.horizontal,
                    scrollBehavior: ScrollBehavior(),
                    physics: NeverScrollableScrollPhysics(),
                    controller: model.controller,
                    onPageChanged: model.onPageChanged,
                    children: model.pages,
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomSheet: Padding(
          padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.horizontal),
          child: Container(
            color: colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10.0),
            child: GestureDetector(
              onTap: model.isValid
                  ? () {
                      model.onMainButtonPressed();
                      SystemChannels.textInput.invokeMethod('TextInput.hide');
                    }
                  : null,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      height: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: model.isValid
                            ? colors.primary
                            : colors.kcLightGreyColor,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: model.loading
                          ? CircularProgressIndicator(
                              valueColor: AlwaysStoppedAnimation(Colors.white),
                            )
                          : Text(
                              model.mainBtnTitles[model.currentIndex],
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14),
                            ),
                    ),
                  ),
                  horizontalSpaceSmall,
                  GestureDetector(
                    onTap: () {
                      model.openWhatsapp();
                    },
                    child: Container(
                      width: 50,
                      height: 50,
                      padding: EdgeInsets.all(4),
                      // rounded grey border
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: colors.kcLightGreyColor),
                      ),
                      child: Image(
                        image: AssetImage("assets/images/whatsapp_icon.png"),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class DTBookingOrderSummaryView extends StatefulWidget {
  const DTBookingOrderSummaryView({Key? key}) : super(key: key);

  @override
  State<DTBookingOrderSummaryView> createState() =>
      _DTBookingOrderSummaryViewState();
}

class _DTBookingOrderSummaryViewState extends State<DTBookingOrderSummaryView> {

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: colors.eCommercePrimary));
    return ViewModelBuilder<DTDogTrainingBookingViewModel>.reactive(
      viewModelBuilder: () => DTDogTrainingBookingViewModel(),
      onModelReady: (model) => model.init(),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          // title : ProfileSelectionAppBar(listOfProfiles: model.listOfProfiles, initialState: model.initialState,),
          // title: Text(model.),
          // titleSpacing: 0,
          title: Text(
            "Order Summary",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold
            ),
          ),
          centerTitle: true,
          actions: <Widget>[
            Container(
                width: 50,
                height: 50,
                child: Stack(children: [
                  Positioned(
                    top: 0,
                    bottom: 0,
                    right: 0,
                    left: 0,
                    child: IconButton(
                      // onPressed: model.onMyBookingsPressed,
                      icon: Image.asset(
                        "assets/images/bag.png",
                        // color: colors.black,
                      ), onPressed: () {  },
                    ),
                  ),
                ])),
            Container(
              width: 50,
              height: 50,
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    bottom: 0,
                    right: 0,
                    left: 0,
                    child: IconButton(
                      // onPressed: model.onNotificationPressed,
                      icon: SvgPicture.asset(
                        "assets/images/notification.svg",
                      ), onPressed: () {  },
                    ),
                  ),
                  Positioned(
                    top: 10,
                    left: 10,
                    child: Visibility(
                      // visible: (model.notificationCount +
                      //     model.requestNotificationCount) >
                      //     0,
                      child: CircleAvatar(
                        radius: 8,
                        backgroundColor: colors.red,
                        child: AppText.tiny(
                          "1",
                          // "${(model.notificationCount + model.requestNotificationCount)}",
                          color: colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // IconButton(
            //   onPressed: model.onChatPressed,
            //   icon: SvgPicture.asset(
            //     "assets/images/chat.svg",
            //   ),
            // ),
          ],
          // elevation: 1.5,
          // brightness: Brightness.light,
          backgroundColor: Colors.white,
          backwardsCompatibility: false,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              verticalSpaceSmall,
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: colors.kcLightGreyColor,
                      width: 1,
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      CircleAvatar(
                        child: Image.asset("assets/images/running_package.png"),
                        backgroundColor: Color(0xffFAC9D7),
                      ),
                      horizontalSpaceSmall,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          verticalSpaceTiny,
                          AppText.body2(model.orderSummaryText1),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                // margin: EdgeInsets.only(left:5,bottom: 20),
                                child: SvgPicture.asset(
                                  "assets/images/seemore_time.svg",
                                  height: 15,
                                  width: 15,
                                  color:colors.primary,
                                ),
                              ),
                              AppText.caption(model.orderSummaryText2),
                            ],
                          ),
                          verticalSpaceSmall,
                          Row(children: [
                            AppText.captionBold("Date: "),
                            AppText.caption(
                              DateFormat("dd/MM/yyyy").format(model.pickedDate),
                            ),
                            horizontalSpaceTiny,
                            AppText.captionBold("Time: "),
                            AppText.caption(model.weekDayTiming),
                          ],),
                          verticalSpaceSmall,
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AppText.captionBold("Address: "),
                              AppText.caption(model.addressLineOneController.text+","),
                            ],),
                          AppText.caption(model.addressLineTwoController.text)
                        ],)
                    ],
                  )
              ),
              verticalSpaceSmall,
              Container(
                child: Text(
                  "Create your payment plan",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              verticalSpaceTiny,

              Container(
                height: 117,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: model.boxes.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ShowPlan(
                      firstText:model.boxes[index][0],
                      secondText:model.boxes[index][1],

                      thirdText:model.boxes[index][2],
                      selected: model.boxes[index][3],
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) =>
                  horizontalSpaceRegular,
                ),
              ),

              SizedBox(
                height: 5,
              ),

              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppText.body("Subtotal"),
                          AppText.body("₹"+model.subTotal.toInt().toString()+"/-"),
                        ],),
                    ),

                    Container(
                      padding: EdgeInsets.all(8),
                      color: Color(0xFFCAE9CF),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppText.body("You Save"),
                          AppText.body("₹"+model.discount.toInt().toString()+"/-"),
                        ],),
                    ),

                    model.savedAmount>0 ? Container(
                      padding: EdgeInsets.all(8),
                      color: Color(0xFFCAE9CF),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppText.body("Coupon Discount"),
                          AppText.body("₹"+model.savedAmount.toInt().toString()+"/-"),
                        ],),
                    ): SizedBox(),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppText.body("Total Price"),
                          AppText.body("₹"+model.amount.toInt().toString()+"/-"),
                        ],),
                    ),
                    SizedBox(height: 5,),

                    //Enter offer code
                    Visibility(
                      // visible: !model.isOfferValid && model.isOfferAvailable,
                      visible: true,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppText.body1("Offers Available!! 🎉🎉🎉🎁🎁🎁"),
                          verticalSpaceRegular,
                          AppInputField(
                            hint: "Enter Promo Code",
                            controller: model.promoCodeController,
                            trailing: model.isCouponProcessing
                                ? Transform.scale(
                              // scale: 0.2,
                              child: CircularProgressIndicator(
                                color: colors.primary,
                              ),
                            )
                                : Icon(
                              Icons.arrow_forward_rounded,
                              color: colors.primary,
                            ),
                            trailingTapped: model.applyCoupon,
                            isBoxBorder: true,
                            textInputType: TextInputType.name,
                            textCapitalization: TextCapitalization.none,
                          ),
                          Row(children: [
                            AppText.captionBold("PAWSOMEOFFER"),
                            horizontalSpaceSmall,
                            AppText.captionBold("ADDITIONAL 10% OFF", color: Color(0xfffb7e9c)),
                          ],),
                        ],
                      ),
                    ),

                    // Offer Done
                    Visibility(
                      visible: model.isOfferValid && model.isOfferAvailable,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppText.body2("Offers"),
                          verticalSpaceSmall,
                          Row(
                            children: [
                              Icon(
                                Icons.check_circle_outline_rounded,
                                color: colors.primary,
                              ),
                              horizontalSpaceSmall,
                              Row(
                                children: [
                                  AppText.body2(
                                    "Promo ",
                                  ),
                                  AppText.body2(
                                    " ${model.promoCode} ",
                                    color: colors.primary,
                                  ),
                                  AppText.body2(
                                    " Applied",
                                  ),
                                ],
                              ),
                            ],
                          ),
                          verticalSpaceSmall,
                          Column(
                            children: [
                              AppText.body2("You saved"),
                              AppText.body2(
                                "INR ${model.savedAmount}",
                                color: colors.primary,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),


                  ],
                ),
              ),


              verticalSpaceSmall,


              OrderSummaryPoster(title: "We are mission-driven not money-driven", description: "100% Refund available",byline:"NO QUESTIONS ASKED"),

              verticalSpaceSmall,
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30),
                width: double.infinity,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: colors.primary,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: AppText.titleBold("Pay Now",
                      color: colors.white),
                ),
              ),






            ],
          ),
        ),
      ),
    );
  }
}

class ShowPlan extends StatelessWidget {
  const ShowPlan({
    Key? key,
    this.firstText,
    this.secondText,
    this.thirdText,
    this.selected
  }) : super(key: key);
  final String? firstText;
  final String? secondText;
  final String? thirdText;
  final bool? selected;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Container(
              width: 130,
                height: 100 ,
                margin: const EdgeInsets.only(bottom: 6.0),
              decoration: BoxDecoration(
                color: selected! ? Color(0xffFFF6DC): colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0.0, 1.0), //(x,y)
                    blurRadius: 6.0,
                  ),
                ],
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: colors.primary,
                  width: selected! ? 1.5 : 1,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  verticalSpaceSmall,

                  Text(
                    "$firstText",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  verticalSpaceSmall,
                  AppText.body1(
                    "$secondText",
                    textAlign: TextAlign.center,

                  ),
                  verticalSpaceSmall,
                  AppText.body1(
                    "$thirdText",
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          CircleAvatar(
            radius: 5,
            backgroundColor:
            selected! ? colors.primary : colors.kcLightGreyColor,
          ),
        ],
      ),
    );
  }
}













