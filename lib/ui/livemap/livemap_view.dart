import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tamely/enum/walkNumber.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/String.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_text.dart';

import 'livemap_viewmodel.dart';

class LiveMapView extends StatelessWidget {
  const LiveMapView({
    Key? key,
    required this.walkNumber,
    required this.serviceProviderId,
    required this.userId,
    required this.appointmentId,
  }) : super(key: key);
  final WalkNumber walkNumber;
  final String serviceProviderId;
  final String userId;
  final String appointmentId;

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LiveMapViewModel>.reactive(
      onModelReady: (model){
        model.init();
      },
      onDispose: (model) {
        model.onDispose();
        },
      builder: (context, model, child) => Scaffold(
        backgroundColor: colors.white,
        body: SafeArea(
          child: Column(
            children: [
              verticalSpaceRegular,
              // Heading
              Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  Positioned(
                    left: 25,
                    child: IconButton(
                      padding: EdgeInsets.zero,
                      alignment: Alignment.centerLeft,
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                      ),
                      onPressed: model.navigateBack,
                    ),
                  ),
                  Center(
                    child: AppText.headingThree(
                      "",
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              verticalSpaceSmall,

              // Maps
              Expanded(
                flex: 3,
                child: Container(
                  color: colors.kcCaptionGreyColor,
                  child:GoogleMap(
                    mapType: MapType.normal,
                    markers: model.markers,
                    myLocationEnabled: false,
                    polylines: model.mapPolylines,
                    initialCameraPosition: model.myLocation,
                    onMapCreated: (GoogleMapController controller) {
                      model.controller.complete(controller);
                    },
                  )
                ),
              ),

              // Bottom
              Expanded(
                flex: 2,
                child: Container(
                    color: colors.white,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 40),
                      child: LiveItem(
                        walkName: model.walkNumber == WalkNumber.One
                            ? walkOneLabel
                            : walkTwoLabel,
                        distance: model.distance.toInt(),
                        time: model.timeTook,
                      ),
                    )),
              ),

              // live run
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: GestureDetector(
                  onTap: null,
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: colors.green30,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Text(
                      liveRunButton,
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
      viewModelBuilder: () => LiveMapViewModel(
        walkNumber,
        serviceProviderId,
        userId,
        appointmentId,
      ),
    );
  }
}

class LiveItem extends StatelessWidget {
  const LiveItem({
    Key? key,
    this.walkName,
    this.distance,
    this.time,
  }) : super(key: key);
  final String? walkName;
  final int? distance;
  final int? time;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> activeStates = <MaterialState>{
        MaterialState.selected,
      };
      if (states.any(activeStates.contains)) {
        return colors.primary;
      }
      return colors.kcLightGreyColor;
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Column(
        children: [
          //
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText.body2(
                    walkName!,
                  ),
                  verticalSpaceTiny,
                  AppText.body1(
                    "Distance covered : $distance km",
                  ),
                ],
              ),
              //
              AppText.body2(
                "$time min",
              ),
            ],
          ),

          verticalSpaceRegular,
        ],
      ),
    );
  }
}

class DogPictureItem extends StatelessWidget {
  const DogPictureItem({
    Key? key,
    this.isUploaded,
    this.imageUrl,
    this.onTapped,
  }) : super(key: key);
  final bool? isUploaded;
  final String? imageUrl;
  final void Function()? onTapped;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        isUploaded!
            ? Container(
                width: 45.0,
                height: 45.0,
                child: Image.file(File(imageUrl!)),
              )
            : GestureDetector(
                onTap: onTapped,
                child: CircleAvatar(
                  radius: 45.0 / 2,
                  backgroundColor: colors.white,
                  child: Image.asset(
                    "assets/images/create_service_images/camera.png",
                  ),
                ),
              ),
      ],
    );
  }
}
