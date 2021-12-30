import 'package:clickable_list_wheel_view/clickable_list_wheel_widget.dart';
import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/app/app.router.dart';
import 'package:tamely/ui/dashboard/dashboard_viewmodel.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/Constant.dart';
import 'package:tamely/widgets/custom_circle_avatar.dart';

class ProfileSelectionAppBar extends StatefulWidget {
  ProfileSelectionAppBar(
      {Key? key, required this.listOfProfiles, required this.initialState})
      : super(key: key);

  List<ProfileSelectBarItem> listOfProfiles;
  int initialState;

  @override
  State<ProfileSelectionAppBar> createState() =>
      _ProfileSelectionAppBarState(initialState);
}

class _ProfileSelectionAppBarState extends State<ProfileSelectionAppBar> {
  double itemWidth = AppBar().preferredSize.height - 10;
  double itemHeight = AppBar().preferredSize.height - 10;
  // int selected =0;
  // final FixedExtentScrollController _scrollController =
  //     FixedExtentScrollController(initialItem: );
  FixedExtentScrollController? _scrollController;
  final navigationService = locator<NavigationService>();

  _ProfileSelectionAppBarState(int initialState) {
    _scrollController = FixedExtentScrollController(initialItem: initialState);
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: double.maxFinite,
      height: itemHeight,
      child: RotatedBox(
        quarterTurns: 3,
        child: ClickableListWheelScrollView(
          itemHeight: itemHeight,
          itemCount: widget.listOfProfiles.length,
          onItemTapCallback: (x) {
            setState(() {
              widget.initialState = x;
            });
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
          scrollController: _scrollController!,
          child: ListWheelScrollView.useDelegate(
            controller: _scrollController,
            itemExtent: itemHeight,
            physics: FixedExtentScrollPhysics(),
            overAndUnderCenterOpacity: 1,
            perspective: 0.000001,
            onSelectedItemChanged: (x) {
              setState(() {
                widget.initialState = x;
              });
              // navigationService.replaceWith(
              //   Routes.dashboard,
              //   arguments: DashboardArguments(
              //       isNeedToUpdateProfile: true,
              //       initialPageState: 0,
              //       isHuman: widget.listOfProfiles[x].isHuman,
              //       petID: widget.listOfProfiles[x].id,
              //       petToken: widget.listOfProfiles[x].token,
              //       initialState: x),
              // );
            },
            childDelegate: ListWheelChildBuilderDelegate(
              builder: (context, index) => _child(index),
              childCount: widget.listOfProfiles.length,
            ),
          ),
        ),
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
          ),
        ),
      ),
    );
  }
}
