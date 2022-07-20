import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:tamely/ui/post/text_post.dart';
import 'camera_view.dart';

List<CameraDescription> cameras = [];

class PostCreation extends StatefulWidget {
  const PostCreation({Key? key}) : super(key: key);

  @override
  State<PostCreation> createState() => _PostCreationState();
}

class _PostCreationState extends State<PostCreation> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.black87,
        body: TabBarView(
          physics: const NeverScrollableScrollPhysics(),
          children: [
            FutureBuilder(
              builder: (context, snapshot) {
                if (cameras.isNotEmpty) {
                  return CameraView(cameras);
                } else
                  return Center(child: Text('Loading'));
              },
              future: init(),
            ),
            TextPost(),
          ],
        ),
        bottomNavigationBar: const TabBar(
          tabs: [
            Tab(
              child: Text(
                'Camera',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Tab(
              child: Text(
                'Text',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> init() async {
    try {
      WidgetsFlutterBinding.ensureInitialized();
      cameras = await availableCameras();
    } on CameraException catch (e) {
      print('Error in fetching the cameras: $e');
    }
  }
}
