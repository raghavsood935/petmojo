import 'package:tamely/shared/base_viewmodel.dart';

class MyPostsTabViewModel extends BaseModel {
  List<String> _dummyListOfPosts = [];

  List<String> get dummyListOfPosts => _dummyListOfPosts;
}
