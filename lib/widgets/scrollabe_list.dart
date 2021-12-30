import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Screen1 extends StatefulWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  _ScreenState createState() => _ScreenState();
}

class _ScreenState extends State<Screen1> {
  double itemWidth = 70.0;
  int itemCount = 5;
  int selected = 4;
  final FixedExtentScrollController _scrollController =
      FixedExtentScrollController(initialItem: 2);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: AppBar(
          flexibleSpace: Padding(
            padding: const EdgeInsets.only(top: 32.0, left: 4, right: 4),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 4.0,  left: 4,),
                child: Container(
                  width: 250,
                  child: RotatedBox(
                    quarterTurns: -1,
                    child: ListWheelScrollView(
                      magnification: 2.0,
                      perspective: 0.0001,
                      physics: const FixedExtentScrollPhysics(),
                      onSelectedItemChanged: (x) {
                        setState(() {
                          selected = x;
                        });
                        print(selected);
                      },
                      controller: _scrollController,
                      children: List.generate(
                          itemCount,
                          (x) => RotatedBox(
                              quarterTurns: 1,
                              child: Padding(
                                padding: x==selected ? const EdgeInsets.only(bottom: 0) : const EdgeInsets.only(bottom: 6),
                                child: AnimatedContainer(
                                  duration: const Duration(milliseconds: 400),
                                  width: x == selected ? 74 : 52,
                                  height: x == selected ? 74 : 52,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: x == selected
                                          ? Colors.white
                                          : Colors.transparent,
                                      shape: BoxShape.circle),
                                  child: AnimatedContainer(
                                      duration: const Duration(milliseconds: 400),
                                      width: x == selected ? 67 : 50,
                                      height: x == selected ? 67 : 50,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                          color: x == selected
                                              ? Colors.red
                                              : Colors.grey,
                                          shape: BoxShape.circle),
                                      ),
                                ),
                              ))),
                      itemExtent: itemWidth,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                getCurrentScreen(selected),
              ],
            ),
          ),
        ),
      ),
    );
  }



  getCurrentScreen(int selectedIndx) {
    String s = selectedIndx.toString();
    switch(s) {
      case '0': {
        return Center(child: Text("Welcome to Page1"),);
      }

      case '1': {
        return Center(child: Text("Welcome to Page2"),);
      }

      case '2': {
        return Center(child: Text("Welcome to Page3"),);
      }
      case '3': {
        return Center(child: Text("Welcome to Page4"),);
      }
      case '4': {
        return Center(child: Text("Welcome to Page5"),);
      }
      default: {
        return Center(child: Text("Welcome to Page5"),);
      }
    }
  }


}
