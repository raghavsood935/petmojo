import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomButtons extends StatelessWidget {
  final double transparencyPost ;
  final double transparencyStory ;
  final VoidCallback onPostClick;
  final VoidCallback onStoryClick;
  final VoidCallback onNextClick;
  final Color color;

  BottomButtons({
    Key? key,
    required this.transparencyStory,
    required this.transparencyPost,
    required this.onPostClick,
    required this.onStoryClick,
    required this.onNextClick , this.color = Colors.black}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
        decoration: BoxDecoration(
            color: color
        ),
        width: width,
        child:Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
              child: Row (
                children: [
                  GestureDetector(
                    child: Container(
                      decoration:  BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Colors.grey.withOpacity(transparencyPost),
                        borderRadius:  const BorderRadius.only(
                          topLeft:Radius.circular(18),
                          bottomLeft:Radius.circular(18),
                          topRight:Radius.zero,
                          bottomRight: Radius.zero,
                        ),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 18),
                          child: Text('Story', style: TextStyle(color: Colors.white),),
                        ),
                      ),
                    ),
                    onTap:() {onStoryClick();},
                  ),
                  GestureDetector(
                    child: Container(
                      decoration:  BoxDecoration(
                        color: Colors.grey.withOpacity(transparencyStory),
                        shape: BoxShape.rectangle,
                        borderRadius:  const BorderRadius.only(
                          topLeft: Radius.zero ,
                          bottomLeft:Radius.zero ,
                          topRight:Radius.circular(18),
                          bottomRight: Radius.circular(18),
                        ),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 18),
                          child: Text('Post', style: TextStyle(color: Colors.white)),
                        ),
                      ),
                    ),
                    onTap:() {  onPostClick();},
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
              child: GestureDetector(
                child: Container(
                  decoration:  const BoxDecoration(
                    color: Colors.grey,
                    shape: BoxShape.rectangle,
                    borderRadius:  BorderRadius.all(Radius.circular(18)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 12),
                          child: Text('Post'),
                        ),
                        Icon(Icons.navigate_next,size: 16,)
                      ],
                    ),
                  ),
                ),
                onTap:(){onNextClick();},
              ),
            ),

          ],
        )
    );
  }
}
