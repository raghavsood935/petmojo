import 'package:kubelite/models/hashtag_model.dart';
import 'package:kubelite/shared/base_viewmodel.dart';

class HashtagsSearchTabViewModel extends BaseModel {
  List<HashTagModel> _listOfHashTag = [
    HashTagModel(),
    HashTagModel(),
    HashTagModel(),
    HashTagModel(),
    HashTagModel(),
    HashTagModel(),
    HashTagModel(),
    HashTagModel(),
    HashTagModel(),
    HashTagModel(),
  ];

  List<HashTagModel> get listOfHashTag => _listOfHashTag;

  Future<void> removeHashTagFromList(int index) async {
    _listOfHashTag.removeAt(index);
    notifyListeners();
  }
}
