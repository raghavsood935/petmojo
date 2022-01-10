import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/api/api_service.dart';
import 'package:tamely/api/server_error.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/app/app.router.dart';
import 'package:tamely/enum/BottomSheetType.dart';
import 'package:tamely/enum/DialogType.dart';
import 'package:tamely/models/feed_post_response.dart';
import 'package:tamely/models/params/delete_post_body.dart';
import 'package:tamely/models/params/like_dislike_post_body.dart';
import 'package:tamely/services/shared_preferences_service.dart';
import 'package:tamely/shared/base_viewmodel.dart';
import 'package:tamely/util/ImageConstant.dart';
import 'package:tamely/util/String.dart';
import 'package:tamely/util/global_methods.dart';
import 'package:tamely/widgets/full_screen_image.dart';

class PostItemViewModel extends BaseModel {
  final _bottomsheetService = locator<BottomSheetService>();
  final _sharedPrefernceService = locator<SharedPreferencesService>();
  final navigationService = locator<NavigationService>();
  final _snackBarService = locator<SnackbarService>();
  final _dialogService = locator<DialogService>();
  final _tamelyApi = locator<TamelyApi>();

  String myProfileImg = emptyProfileImgUrl;
  String Id = "";
  String postId = "";

  FeedPostResponse? postResponse;

  bool isHuman = true;
  String petToken = "";

  int commentsCounts = 0;

  bool isOurPost = true;

  void init(FeedPostResponse postResponse) async {
    CurrentProfile profile = _sharedPrefernceService.getCurrentProfile();
    this.isHuman = profile.isHuman;
    this.myProfileImg = profile.profileImgUrl == ""
        ? emptyProfileImgUrl
        : profile.profileImgUrl;
    this.Id = profile.isHuman ? profile.userId : profile.petId;
    this.petToken = profile.petToken;

    this.postResponse = postResponse;
    this.postId = postResponse.Id ?? "";

    if (postResponse.authorType == 'human' ||
        postResponse.authorType == 'User') {
      if ((postResponse.userAuthor ?? []).isNotEmpty) {
        if ((postResponse.userAuthor ?? [])[0].Id!.isNotEmpty) {
          isOurPost = (profile.isHuman ? profile.userId : profile.petId) ==
              ((postResponse.userAuthor ?? [])[0].Id);
          notifyListeners();
        } else {
          isOurPost = false;
          notifyListeners();
        }
      } else {
        isOurPost = false;
        notifyListeners();
      }
    } else {
      if ((postResponse.animalAuthorResponse ?? []).isNotEmpty) {
        if ((postResponse.animalAuthorResponse ?? [])[0].Id!.isNotEmpty) {
          isOurPost = (profile.isHuman ? profile.userId : profile.petId) ==
              ((postResponse.animalAuthorResponse ?? [])[0].Id);
          notifyListeners();
        } else {
          isOurPost = false;
          notifyListeners();
        }
      } else {
        isOurPost = false;
        notifyListeners();
      }
    }

    if (postResponse.commentResponse != null) {
      this.commentsCounts = postResponse.commentResponse!.commentCount ?? 0;
      notifyListeners();
    }

    notifyListeners();
  }

  Future likeOrDislikePost(bool vote) async {
    LikeDislikePostBody body = LikeDislikePostBody(
        postId, vote, VoterDetails(GlobalMethods.getProfileType(isHuman), Id));

    await _tamelyApi.likeOrDislikeThePost(body, true);
  }

  Future bookmarkAction() async {
    await _tamelyApi.bookmarkActionPost(postId, isHuman, animalToken: petToken);
  }

  Future inspectProfile(BuildContext ct, String profileID) async {
    await navigationService.navigateTo(
      Routes.profileView,
      arguments: ProfileViewArguments(
        menuScreenContext: ct,
        onScreenHideButtonPressed: () {},
        isInspectView: true,
        inspecterProfileId: Id,
        inspectProfileId: profileID,
        inspecterProfileType: GlobalMethods.getProfileType(isHuman),
      ),
    );
  }

  Future inspectAnimalProfile(
      BuildContext ct, String petId, String petToken) async {
    await navigationService.navigateTo(
      Routes.animalProfileView,
      arguments: AnimalProfileViewArguments(
        isFromDashboard: false,
        isInspectView: true,
        id: petId,
        token: petToken,
        inspecterProfileId: Id,
        inspecterProfileType: GlobalMethods.getProfileType(isHuman),
      ),
    );
  }

  Future showComments(String postId) async {
    var sheetResponse = await _bottomsheetService.showCustomSheet(
      variant: BottomSheetType.CommentsBottomSheet,
      data: postId,
      isScrollControlled: true,
      barrierDismissible: false,
      customData: myProfileImg,
    );

    if (sheetResponse != null) {
      this.commentsCounts =
          this.commentsCounts + int.parse(sheetResponse.data.toString());
      notifyListeners();
    }
  }

  Future showMoreOptions() async {
    var sheetResponse = await _bottomsheetService.showCustomSheet(
      variant: BottomSheetType.MoreOptionBottomSheet,
      isScrollControlled: true,
      barrierDismissible: true,
    );

    if (sheetResponse != null) {
      print("Confirmed : ${sheetResponse.confirmed}");
      if (sheetResponse.confirmed) {
        var response = int.parse(sheetResponse.data.toString());
        print("VALUE : $response");
        switch (response) {
          case 0:
            {
              var result = await deletePost();
              print("DELETE VALUE : $result");
              if (result == 1) {
                navigationService.back(result: 1);
                _snackBarService.showSnackbar(message: "Post is deleted");
              }
              break;
            }
        }
      }
      notifyListeners();
    }
  }

  Future<int> deletePost() async {
    var sheetResponse = await _bottomsheetService.showCustomSheet(
      variant: BottomSheetType.DeletePostBottomSheet,
      isScrollControlled: true,
      barrierDismissible: true,
      title: deletePostConfirmation,
      secondaryButtonTitle: "CANCEL",
      mainButtonTitle: "DELETE",
    );

    if (sheetResponse!.confirmed) {
      if (int.parse(sheetResponse.data.toString()) == 1) {
        var response = await _tamelyApi.deletePost(
          DeletePostBody(postId),
          isHuman,
          petToken,
        );
        if (response.getException != null) {
          ServerError error = response.getException as ServerError;
          _snackBarService.showSnackbar(message: error.getErrorMessage());
          return 0;
        } else if (response.data != null) {
          if (response.data!.success ?? false) {
            return 1;
          } else {
            return 0;
          }
        } else {
          return 0;
        }
      } else {
        return 0;
      }
    } else {
      return 0;
    }
  }

  Future imageTapped(String url) async {
    // await _dialogService.showCustomDialog(
    //   variant: DialogType.ImagePopUpDialog,
    //   barrierDismissible: true,
    //   data: url,
    // );

    navigationService.navigateTo(
      Routes.fullScreenImage,
      arguments: FullScreenImageArguments(url: url),
    );

    // Navigator.of(context).push(PageRouteBui)
  }
}
