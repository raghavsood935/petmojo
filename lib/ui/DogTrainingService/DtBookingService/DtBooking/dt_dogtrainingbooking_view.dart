import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/enum/DialogType.dart';
import 'package:tamely/popUpNotifications/User%20Training%20Pop%20ups/dt_order_summary_poster.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_text.dart';
import '../../../../enum/dog_training_package.dart';
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


// List _boxes = [
//   ['Pay Full Amount', "₹6,500/-", "Per month", false],
//   ["Monthly Billing", "₹8,700/-", "Per month", true]
// ];
// List get boxes => _boxes;

class DTPlanSelectionView extends StatefulWidget {
  DTPlanSelectionView({Key? key,required this.address1,required this.address2,required this.subTotal,required this.youSave,required this.totalPrice,required this.savedAmount,
    required this.date,required this.value,required this.offerValid,required this.OfferAvailaible,required this.bookingId,required this.noOfPetsSelected}) : super(key: key);
  String address1;
  String address2;
  double subTotal;
  double youSave;
  double totalPrice;
  double savedAmount;
   DateTime date;
   DogTrainingPackage? value;
   bool offerValid;
   bool OfferAvailaible;
   String bookingId;
   int noOfPetsSelected;

  @override
  State<DTPlanSelectionView> createState() =>
      _DTPlanSelectionViewState();
}

class _DTPlanSelectionViewState extends State<DTPlanSelectionView> {



  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: colors.eCommercePrimary));
    return ViewModelBuilder<DTDogTrainingBookingViewModel>.reactive(
      viewModelBuilder: () => DTDogTrainingBookingViewModel(),
      onModelReady: (model) async{
        model.init();
        model.selectPlan(widget.value);
      },
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
          ],

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
                          AppText.body2(model.description),
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
                              horizontalSpaceSmall,
                              AppText.caption("${model.frequency} Sessions"),
                            ],
                          ),
                          verticalSpaceSmall,
                          Row(children: [
                            AppText.captionBold("Date: "),
                            AppText.caption(
                              DateFormat("dd/MM/yyyy").format(widget.date),
                            ),
                          ],),
                          verticalSpaceSmall,
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AppText.captionBold("Address: "),
                              AppText.caption(widget.address1+","),
                            ],),
                          AppText.caption(widget.address2)
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
                      model:model,
                      totalPrice: (index==0)?widget.totalPrice.toInt():8900,
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) =>
                  horizontalSpaceRegular,
                ),
              ),

              SizedBox(
                height: 5,
              ),

              (model.selected==0)?OrderSummary(subTotal: widget.subTotal.toInt(), youSave: widget.youSave.toInt(), totalPrice: widget.totalPrice.toInt(),model:model,savedAmount:widget.savedAmount.toInt(),offerAvailaible: widget.OfferAvailaible,offerValid: widget.offerValid,):
                  OrderSummary(subTotal: widget.subTotal.toInt(), youSave: widget.subTotal.toInt()-(8900*model.noOfMonths.toInt()*widget.noOfPetsSelected-widget.savedAmount.toInt()), totalPrice: 8900*model.noOfMonths.toInt()*widget.noOfPetsSelected-widget.savedAmount.toInt(),model: model,savedAmount:widget.savedAmount.toInt(),offerAvailaible: widget.OfferAvailaible,offerValid: widget.offerValid),


              verticalSpaceSmall,


              Visibility(
                  visible: (!widget.offerValid && widget.OfferAvailaible) && model.secondOffer,
                  child: OrderSummaryPoster(title: "We are mission-driven not money-driven", description: "100% Refund available",byline:"NO QUESTIONS ASKED")),
              ((!widget.offerValid && widget.OfferAvailaible) && model.secondOffer)?verticalSpaceSmall:verticalSpaceLarge,
              GestureDetector(
                onTap: (){
                  // *model.noOfMonths.toInt()*widget.noOfPetsSelected-model.savedAmount.toInt()
                  int amount =(model.selected==0)?widget.totalPrice.toInt()-model.savedAmount.toInt():8900;
                  model.onMainButtonPressed2(amount,widget.bookingId);
                  SystemChannels.textInput.invokeMethod('TextInput.hide');
                },
                child: Container(
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
              ),


            ],
          ),
        ),
      ),
    );
  }
}

class OrderSummary extends StatelessWidget {

  OrderSummary({
    Key? key,
    required this.subTotal,
    required this.youSave,
    required this.totalPrice,
    required this.model,
    required this.savedAmount,
    required this.offerValid,
    required this.offerAvailaible,
  }) : super(key: key);

  final int subTotal;
  final int youSave;
  final int totalPrice;
  final DTDogTrainingBookingViewModel model;
  final int savedAmount;
  final bool offerValid;
  final bool offerAvailaible;


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppText.body("Subtotal"),
                AppText.body("₹"+subTotal.toString()+"/-"),
              ],),
          ),

          Container(
            padding: EdgeInsets.all(8),
            color: Color(0xFFCAE9CF),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppText.body("You Save"),
                AppText.body("₹"+youSave.toString()+"/-"),
              ],),
          ),

          savedAmount>0 || !model.secondOffer? Container(
            padding: EdgeInsets.all(8),
            color: Color(0xFFCAE9CF),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppText.body("Coupon Discount"),
                (savedAmount>0)?AppText.body("-₹"+savedAmount.toInt().toString()+"/-"):
                AppText.body("-₹"+model.savedAmount.toInt().toString()+"/-"),
              ],),
          ): SizedBox(),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppText.bodyBold("Total Price"),
                (savedAmount>0)?AppText.bodyBold("₹"+"$totalPrice"+"/-",color: colors.primary,):
                AppText.bodyBold("₹"+"${totalPrice-model.savedAmount.toInt()}"+"/-",color: colors.primary,)
              ],),
          ),
          SizedBox(height: 5,),

          // Enter offer code
          Visibility(
            visible: (!offerValid && offerAvailaible) && model.secondOffer,
            // visible: true,
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
                    scale: 0.2,
                    child: CircularProgressIndicator(
                      color: colors.primary,
                    ),
                  )
                      : Icon(
                    Icons.arrow_forward_rounded,
                    color: colors.primary,
                  ),
                  trailingTapped: model.applyCoupon2,
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
            visible: (offerValid && offerAvailaible) || !model.secondOffer,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText.body("Offer"),
                verticalSpaceSmall,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Icon(
                    //   Icons.check_circle_outline_rounded,
                    //   color: colors.primary,
                    // ),
                    TextButton(
                      onPressed: () {  },
                      style:  TextButton.styleFrom(
                        backgroundColor: Colors.green,
                      ),
                      child: AppText.body1("PAWSOMEOFFER",color: colors.white,),
                    ),
                    horizontalSpaceSmall,
                    
                    AppText.body2((savedAmount>0)?"₹$savedAmount/- off" :
                            "₹${model.savedAmount.toInt()}/- off",)
                    // Row(
                    //   children: [
                    //     AppText.body2(
                    //       "Promo ",
                    //     ),
                    //     AppText.body2(
                    //       " ${model.promoCode} ",
                    //       color: colors.primary,
                    //     ),
                    //     AppText.body2(
                    //       " Applied",
                    //     ),
                    //   ],
                    // ),
                  ],
                ),
                verticalSpaceSmall,
                // Column(
                //   children: [
                //     AppText.body2("You saved"),
                //     AppText.body2(
                //       (savedAmount>0)?"INR $savedAmount":
                //       "INR ${model.savedAmount}",
                //       color: colors.primary,
                //     ),
                //   ],
                // ),
              ],
            ),
          ),


        ],
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
    this.selected,
    this.model,
    this.totalPrice
  }) : super(key: key);
  final String? firstText;
  final String? secondText;
  final String? thirdText;
  final bool? selected;
  final int? totalPrice;
  final DTDogTrainingBookingViewModel? model;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        model?.paymentPlan(firstText!);
      },
      child: Container(
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
                      "₹${totalPrice?.toInt()}/-",
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
      ),
    );
  }
}













