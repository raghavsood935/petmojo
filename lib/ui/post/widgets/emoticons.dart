
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GridPopup extends StatelessWidget {
  final Callback callback;

  GridPopup({required this.callback});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Material(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.black54.withOpacity(0.5)
            ),
            child: GridView.count(
              crossAxisCount: 5,
              crossAxisSpacing: 2.0,
              mainAxisSpacing: 2.0,
              childAspectRatio: 1.0,
              shrinkWrap: true,
              children: List.generate(
                25, // <-- when increasing the number of items the GridView overflows
                    (index) => GestureDetector(
                      onTap: () {callback(index+1);  Navigator.pop(context);}, // handle your image tap here
                      child: Image.asset(
                        'assets/images/emoji/${index+1}.png',
                        fit: BoxFit.contain, // this is the solution for border
                      ),
                    ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
typedef void Callback(int val);
