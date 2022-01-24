import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/models/get_animals_by_location_response.dart';
import '../stray_profile_list_tile.dart';
import 'strays_near_you_map_view_model.dart';
import 'package:tamely/util/Color.dart';

class StrayNearYouMapView extends StatelessWidget {
  const StrayNearYouMapView({Key? key, required this.animals}) : super(key: key);

  final List<GetAnimalsByLocationDetailsResponse> animals;

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<StraysNearYouMapViewModel>.reactive(
      onModelReady: (model){
        model.init();
      },
      onDispose: (model) {
        model.onDispose();
      },
      builder: (context, model, child) => Scaffold(
        backgroundColor: colors.white,
        body: SafeArea(
          child: Stack(
            children: [

              // Maps
              Positioned.fill(
                  child:GoogleMap(
                    mapType: MapType.normal,
                    markers: model.markers,
                    myLocationEnabled: false,
                    zoomControlsEnabled: true,
                    initialCameraPosition: model.initialLocation,
                    onMapCreated: (GoogleMapController controller) {
                      model.controller.complete(controller);
                      controller.setMapStyle(model.mapStyle);
                    },
                  )
              ),

              //top
              Positioned(
                left: 25,
                top: 0,
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

              if(model.selectedAnimal!=null)
                AnimatedPositioned(
                    duration: Duration(milliseconds: 500),
                    bottom: 0,
                    left: 0,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: colors.white,
                      ),
                      width: MediaQuery.of(context).size.width - 30,
                      margin: EdgeInsets.all(15),
                      child: StrayAnimalProfileTile(
                          profile: model.selectedAnimal!),
                    )
                )


              // Bottom
              // Expanded(
              //   flex: 2,
              //   child: Container(
              //       color: colors.white,
              //       child: Padding(
              //         padding: const EdgeInsets.symmetric(vertical: 40),
              //         child: LiveItem(
              //           walkName: model.walkNumber == WalkNumber.One
              //               ? walkOneLabel
              //               : walkTwoLabel,
              //           distance: model.showDistance,
              //           time: model.timeTook,
              //         ),
              //       )),
              // ),
            ],
          ),
        ),
      ),
      viewModelBuilder: () => StraysNearYouMapViewModel(
       animals
      ),
    );
  }
}
