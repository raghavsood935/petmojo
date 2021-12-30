import 'package:flutter/cupertino.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/api/api_service.dart';
import 'package:tamely/api/server_error.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/models/comment_added_response.dart';
import 'package:tamely/models/feed_post_response.dart';
import 'package:tamely/models/list_of_comments_response.dart';
import 'package:tamely/models/params/comment_new/add_comment_body.dart';
import 'package:tamely/services/shared_preferences_service.dart';
import 'package:tamely/shared/base_viewmodel.dart';

class CommentViewModel extends BaseModel {
  final _tamelyApi = locator<TamelyApi>();
  final _sharedPrefernceService = locator<SharedPreferencesService>();
  final _snackbarService = locator<SnackbarService>();
  final _bottomSheetService = locator<BottomSheetService>();

  String _postId = "";

  //only for  single post details page
  int commentsCount = 0;

  bool isHuman = true;
  String petID = "";
  String petToken = "";
  String profileImgUrl = "";

  int newlyAddedCommentsCount = 0;

  int _counter = 0;
  bool _isLoading = true;
  bool _isEndOfList = false;
  bool _isCommentPostingLoading = false;

  TextEditingController _commentTC = TextEditingController();

  List<CommentResponse> _listOfComments = [];

  TextEditingController get commentTC => _commentTC;

  bool get isLoading => _isLoading;

  bool get isEndOfList => _isEndOfList;

  bool get isCommentPostingLoading => _isCommentPostingLoading;

  List<CommentResponse> get listOfComments => _listOfComments;

  void init(String postID, {int previousCC = 0}) {
    _postId = postID;

    CurrentProfile profile = _sharedPrefernceService.getCurrentProfile();

    isHuman = profile.isHuman;
    petID = profile.petId;
    petToken = profile.petToken;
    profileImgUrl = profile.profileImgUrl;

    commentsCount = previousCC;

    notifyListeners();
    fetchComment(false);
  }

  Future<void> fetchComment(bool isSeemore) async {
    _isLoading = true;
    if (!isSeemore) {
      _counter = 0;
      _isEndOfList = false;
    }
    notifyListeners();
    var result = await _tamelyApi.fetchComment(_postId, _counter);
    if (result.getException != null) {
      ServerError error = result.getException as ServerError;
      _isLoading = false;
      notifyListeners();
      if (!(error.getErrorMessage() ==
          "Connection failed due to internet connection")) {
        _snackbarService.showSnackbar(message: error.getErrorMessage());
      } else {
        _isEndOfList = true;
        notifyListeners();
      }
    } else if (result.data != null) {
      if (_counter == 0) {
        _listOfComments.clear();
        _isEndOfList = false;
        notifyListeners();
      }

      for (CommentResponse response in result.data!.listOfComments ?? []) {
        _listOfComments.add(response);
      }

      if ((result.data!.listOfComments ?? []).length < 10) {
        _isEndOfList = true;
        notifyListeners();
      }

      _counter++;
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<void> postComment(BuildContext ct) async {
    if (commentTC.text.isNotEmpty) {
      if (!_isCommentPostingLoading) {
        FocusScope.of(ct).unfocus();
        _isCommentPostingLoading = true;
        notifyListeners();
        var result = await _tamelyApi.addComment(
          AddCommentBody(_commentTC.text),
          isHuman,
          _postId,
          animalToken: petToken,
        );
        if (result.getException != null) {
          ServerError error = result.getException as ServerError;
          _isCommentPostingLoading = false;
          notifyListeners();
          _snackbarService.showSnackbar(message: error.getErrorMessage());
        }
        if (result != null) {
          _commentTC.clear();
          _isCommentPostingLoading = false;
          newlyAddedCommentsCount++;
          commentsCount++;
          notifyListeners();
          fetchComment(false);
        }
      }
    }
  }

  Future<bool> onClose() async {
    _bottomSheetService.completeSheet(
        SheetResponse(confirmed: true, data: newlyAddedCommentsCount));
    return true;
  }
}
