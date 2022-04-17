import 'package:clickable_list_wheel_view/clickable_list_wheel_widget.dart';
import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/app/app.router.dart';
import 'package:tamely/enum/BottomSheetType.dart';
import 'package:tamely/ui/dashboard/dashboard_viewmodel.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/Constant.dart';
import 'package:tamely/widgets/custom_circle_avatar.dart';

class ProfileSelectionBottomNavbar extends StatefulWidget {
  ProfileSelectionBottomNavbar(
      {Key? key, required this.listOfProfiles, required this.initialState})
      : super(key: key);

  List<ProfileSelectBarItem> listOfProfiles;
  int initialState;

  @override
  State<ProfileSelectionBottomNavbar> createState() =>
      _ProfileSelectionBottomNavbarState(initialState);
}

class _ProfileSelectionBottomNavbarState
    extends State<ProfileSelectionBottomNavbar> {
  final _bottomSheetService = locator<BottomSheetService>();
  double itemWidth = AppBar().preferredSize.height - 10;
  double itemHeight = AppBar().preferredSize.height - 10;
  // int selected =0;
  // final FixedExtentScrollController _scrollController =
  //     FixedExtentScrollController(initialItem: );
  FixedExtentScrollController? _scrollController;
  final navigationService = locator<NavigationService>();

  _ProfileSelectionBottomNavbarState(int initialState) {
    _scrollController = FixedExtentScrollController(initialItem: initialState);
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    // if(widget.listOfProfiles.length><21>) {
    if (widget.listOfProfiles.length < 2) {
      return (SizedBox(height: 30));
    }
    return GestureDetector(
      onLongPress: () async {
        print(widget.listOfProfiles[0].profileName);
        print(widget.listOfProfiles[1].profileName);
        var result = await _bottomSheetService.showCustomSheet(
          variant: BottomSheetType.BasicListOfOptionsBottomSheet,
          title: "YO",
          description: "Des",
          customData: widget.listOfProfiles,
          data: widget.initialState,
        );

        int x = result!.data;
        navigationService.replaceWith(
          Routes.dashboard,
          arguments: DashboardArguments(
              isNeedToUpdateProfile: true,
              initialPageState: 0,
              isHuman: widget.listOfProfiles[x].isHuman,
              petID: widget.listOfProfiles[x].id,
              petToken: widget.listOfProfiles[x].token,
              initialState: x),
        );
      },
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 13.0),
            child: CustomCircularAvatar(
              radius: 15,
              imgPath: widget.listOfProfiles[1].avatar,
              isHuman: widget.listOfProfiles[1].isHuman,
            ),
          ),
          CustomCircularAvatar(
            radius: 15,
            imgPath: widget.listOfProfiles[0].avatar,
            isHuman: widget.listOfProfiles[0].isHuman,
          ),
        ],
      ),
    );
  }

  Widget _child(int x) {
    return RotatedBox(
      quarterTurns: 1,
      child: Padding(
        padding: EdgeInsets.only(
            bottom: x == widget.initialState ? 0.0 : 8.0,
            top: x == widget.initialState ? 6.0 : 8.0),
        child: Container(
          width: x == widget.initialState ? 74 : 52,
          height: x == widget.initialState ? 74 : 52,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color:
                  x == widget.initialState ? Colors.white : Colors.transparent,
              shape: BoxShape.circle),
          child: CustomCircularAvatar(
            radius: 33,
            imgPath: widget.listOfProfiles[x].avatar,
            isHuman: widget.listOfProfiles[x].isHuman,
          ),
        ),
      ),
    );
  }
}
