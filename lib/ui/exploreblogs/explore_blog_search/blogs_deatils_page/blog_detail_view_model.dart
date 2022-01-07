import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/api/api_service.dart';
import 'package:tamely/api/base_response.dart';
import 'package:tamely/api/server_error.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/models/get_blogs_details_model.dart';
import 'package:tamely/models/get_blogs_model.dart';
import 'package:tamely/models/params/liked_blog_body.dart';
import 'package:tamely/services/shared_preferences_service.dart';
import 'package:tamely/shared/base_viewmodel.dart';
import 'package:tamely/util/ImageConstant.dart';

class BlogDetailViewModel extends BaseModel {
  final _bottomsheetService = locator<BottomSheetService>();
  final _sharedPrefernceService = locator<SharedPreferencesService>();
  final navigationService = locator<NavigationService>();
  final _snackBarService = locator<SnackbarService>();
  final _tamelyApi = locator<TamelyApi>();

  blogDetails? blog;

  bool isLoading = false;

  int likeChanges = 0;

  String myProfileImg = emptyProfileImgUrl;
  String Id = "";
  String postId = "";

  bool isHuman = true;
  String petToken = "";

  bool isLiked = false;
  int likesCount = 0;

  Future init(blogDetails b) async {
    CurrentProfile profile = _sharedPrefernceService.getCurrentProfile();
    this.isHuman = profile.isHuman;
    this.myProfileImg = profile.profileImgUrl == ""
        ? emptyProfileImgUrl
        : profile.profileImgUrl;
    this.Id = profile.isHuman ? profile.userId : profile.petId;
    this.petToken = profile.petToken;

    notifyListeners();

    getBlogDetail(b.sId ?? "");
  }

  Future getBlogDetail(String blogId) async {
    isLoading = true;
    notifyListeners();
    BaseResponse<GetBlogDetailsResponse> response =
        await _tamelyApi.getBlogDetails(LikedBlogBody(blogId));
    print(response);
    if (response.getException != null) {
      ServerError error = response.getException as ServerError;
      _snackBarService.showSnackbar(message: error.getErrorMessage());
      print("error found");
      isLoading = false;
      notifyListeners();
    } else if (response.data != null) {
      blog = response.data!.blog;
      isLiked = response.data!.blog!.isLiked ?? false;
      likesCount = response.data!.blog!.likes ?? 0;
      isLoading = false;
      notifyListeners();
    } else {
      isLoading = false;
      notifyListeners();
    }
  }

  Future likedBlog(blogId) async {
    LikedBlogBody body = LikedBlogBody(blogId);

    if (isLiked) {
      likesCount--;
      likeChanges--;
      notifyListeners();
    } else {
      likesCount++;
      likeChanges++;
      notifyListeners();
    }
    isLiked = !isLiked;
    notifyListeners();

    var result = await _tamelyApi.likedBlog(body, isHuman, petToken: petToken);
    if (result.data != null) {
      if (result.data!.message != null) {
        _snackBarService.showSnackbar(message: "${result.data!.message!}");
        notifyListeners();
      }
    } else if (result.getException != null) {
      ServerError error = result.getException as ServerError;
      _snackBarService.showSnackbar(message: error.getErrorMessage());
      if (isLiked) {
        likesCount--;
        likeChanges--;
        notifyListeners();
      } else {
        likesCount++;
        likeChanges++;
        notifyListeners();
      }
      isLiked = !isLiked;
      notifyListeners();
    }
  }

  Future<bool> onDetailsPageBack() async {
    navigationService.back(result: likeChanges);
    return true;
  }
}
