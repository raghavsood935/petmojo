import 'dart:io';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tamely/ui/post/widgets/bottom_buttons.dart';
import 'package:video_player/video_player.dart';


class PreviewScreen extends StatefulWidget {
  final File? imageFile;
  final bool type;
  final File? videoFile;

  const PreviewScreen(
  {this.imageFile,
     required this.type, this.videoFile});

  @override
  _PreviewScreen createState() => _PreviewScreen();

}

class _PreviewScreen extends State<PreviewScreen>{

  VideoPlayerController? videoController;

  @override
  void initState() {
    super.initState();
    if(widget.type){
     // _videoFile = File(widget.path);
      _startVideoPlayer();
    }
  }

  Future<void> _startVideoPlayer() async {
    videoController = VideoPlayerController.file(widget.videoFile!);
    await videoController!.initialize();
    await videoController!.setLooping(true);
    await videoController!.play();
  }
  //Bottom Buttons
  bool isPost = true;
  double transparencyPost = 0.3;
  double transparencyStory  = 0.7;
  void onPostClick(){
    isPost =true;
    setState(() {
      transparencyStory = 0.7;
      transparencyPost = 0.3;
    });
  }
  void onStoryClick(){
    isPost =false;
    setState(() {
      transparencyStory = 0.3;
      transparencyPost = 0.7;
    });
  }
  void onNextClick(){
    //saveImage();
  }//SavePost

  @override
  void dispose() {
    videoController!.dispose();
    super.dispose();
  }


  @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: widget.type ? VideoPlayer(
                  videoController!) :Image.file(widget.imageFile!),
            ),
            BottomButtons(transparencyStory: transparencyStory,
                transparencyPost: transparencyPost,
                onPostClick: !isPost ?onPostClick : (){},
                onStoryClick: isPost ?onStoryClick : (){},
                onNextClick: onNextClick
            )
          ],
        ),
      );
    }


}
