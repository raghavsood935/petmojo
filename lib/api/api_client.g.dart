// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _ApiClient implements ApiClient {
  _ApiClient(this._dio, {this.baseUrl}) {
    baseUrl ??= 'https://tamely.herokuapp.com/api/';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<UserResponse> login(loginBody) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(loginBody.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<UserResponse>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, '/auth/login',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = UserResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<CommonResponse> resetPassword(resetPasswordBody) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(resetPasswordBody.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<CommonResponse>(
            Options(method: 'PATCH', headers: _headers, extra: _extra)
                .compose(_dio.options, '/auth/reset-password-mail',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = CommonResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<CommonResponse> updatePassword(updatePasswordBody) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(updatePasswordBody.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<CommonResponse>(
            Options(method: 'PATCH', headers: _headers, extra: _extra)
                .compose(_dio.options, '/auth/update-password',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = CommonResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<CommonResponse> verifyAccount(type) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<CommonResponse>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, '/auth/resendotp/$type',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = CommonResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<CommonResponse> confirmAccount(confirmOTPBody) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(confirmOTPBody.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<CommonResponse>(
            Options(method: 'PUT', headers: _headers, extra: _extra)
                .compose(_dio.options, '/user/confirm',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = CommonResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<CommonResponse> verifyResetPassword(confirmOTPBody) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(confirmOTPBody.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<CommonResponse>(
            Options(method: 'PUT', headers: _headers, extra: _extra)
                .compose(_dio.options, '/auth/verify-reset-otp',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = CommonResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<UserResponse> facebookLogin(socialLoginBody) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(socialLoginBody.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<UserResponse>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, '/auth/login/facebook',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = UserResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<UserResponse> googleLogin(socialLoginBody) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(socialLoginBody.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<UserResponse>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, '/auth/login/google',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = UserResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<UserResponse> register(registerBody) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(registerBody.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<UserResponse>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, '/auth/register',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = UserResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<UserNameAvailableResponse> checkUserName(username) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<UserNameAvailableResponse>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/user/isusernameavailable/$username',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = UserNameAvailableResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<UserResponse> updateProfile(createBody) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(createBody.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<UserResponse>(
            Options(method: 'PUT', headers: _headers, extra: _extra)
                .compose(_dio.options, '/user',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = UserResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<CommonResponse> updateImage(image) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = FormData();
    _data.files.add(MapEntry(
        'image',
        MultipartFile.fromFileSync(image.path,
            filename: image.path.split(Platform.pathSeparator).last)));
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<CommonResponse>(
            Options(method: 'PUT', headers: _headers, extra: _extra)
                .compose(_dio.options, '/user/avatar',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = CommonResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<UserProfileDetailsResponse> getUserProfileDetails() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<UserProfileDetailsResponse>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/user/userDetails',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = UserProfileDetailsResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ListOfPostResponse> getUserPosts() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ListOfPostResponse>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, '/post/myPosts',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ListOfPostResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ProfileDetailsByIdResponse> getProfileDetailsById(
      getProfileDetailsByIdBody) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(getProfileDetailsByIdBody.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ProfileDetailsByIdResponse>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, '/user/getUserDetailsById',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ProfileDetailsByIdResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ListOfFeedPostResponse> getFeedPosts(counterBody) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(counterBody.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ListOfFeedPostResponse>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, '/post/feed',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ListOfFeedPostResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<GeneratePetUsernameResponse> generatePetUsername() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<GeneratePetUsernameResponse>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/animal/getUniquePetName',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = GeneratePetUsernameResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<CommonResponse> changeBioAndAvatar(changeBioAvatarBody) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(changeBioAvatarBody.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<CommonResponse>(
            Options(method: 'PUT', headers: _headers, extra: _extra)
                .compose(_dio.options, '/user/bioAndAvatar',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = CommonResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<AnimalProfileCreateResopnse> animalProfileCreate(
      name,
      username,
      avatar,
      category,
      bio,
      animalType,
      gender,
      breed,
      age,
      mating,
      adoption,
      playBuddies,
      registeredWithKennelClub,
      playFrom,
      playTo,
      location) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = FormData();
    _data.fields.add(MapEntry('name', name));
    _data.fields.add(MapEntry('username', username));
    _data.fields.add(MapEntry('avatar', avatar));
    _data.fields.add(MapEntry('category', category));
    _data.fields.add(MapEntry('bio', bio));
    _data.fields.add(MapEntry('animalType', animalType));
    _data.fields.add(MapEntry('gender', gender));
    _data.fields.add(MapEntry('breed', breed));
    _data.fields.add(MapEntry('age', age));
    _data.fields.add(MapEntry('mating', mating.toString()));
    _data.fields.add(MapEntry('adoption', adoption.toString()));
    _data.fields.add(MapEntry('playBuddies', playBuddies.toString()));
    _data.fields.add(MapEntry(
        'registeredWithKennelClub', registeredWithKennelClub.toString()));
    _data.fields.add(MapEntry('playFrom', playFrom));
    _data.fields.add(MapEntry('playTo', playTo));
    _data.fields.add(MapEntry('location', location));
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<AnimalProfileCreateResopnse>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, '/animal/register',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = AnimalProfileCreateResopnse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<EditResponse> editAnimalProfile(
      name,
      username,
      avatar,
      category,
      bio,
      animalType,
      gender,
      breed,
      age,
      mating,
      adoption,
      playBuddies,
      registeredWithKennelClub,
      playFrom,
      playTo,
      location,
      servicePet,
      spayed,
      animalId) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = FormData();
    if (name != null) {
      _data.fields.add(MapEntry('name', name));
    }
    if (username != null) {
      _data.fields.add(MapEntry('username', username));
    }
    if (avatar != null) {
      _data.fields.add(MapEntry('avatar', avatar));
    }
    if (category != null) {
      _data.fields.add(MapEntry('category', category));
    }
    if (bio != null) {
      _data.fields.add(MapEntry('bio', bio));
    }
    if (animalType != null) {
      _data.fields.add(MapEntry('animalType', animalType));
    }
    if (gender != null) {
      _data.fields.add(MapEntry('gender', gender));
    }
    if (breed != null) {
      _data.fields.add(MapEntry('breed', breed));
    }
    if (age != null) {
      _data.fields.add(MapEntry('age', age));
    }
    if (mating != null) {
      _data.fields.add(MapEntry('mating', mating.toString()));
    }
    if (adoption != null) {
      _data.fields.add(MapEntry('adoption', adoption.toString()));
    }
    if (playBuddies != null) {
      _data.fields.add(MapEntry('playBuddies', playBuddies.toString()));
    }
    if (registeredWithKennelClub != null) {
      _data.fields.add(MapEntry(
          'registeredWithKennelClub', registeredWithKennelClub.toString()));
    }
    if (playFrom != null) {
      _data.fields.add(MapEntry('playFrom', playFrom));
    }
    if (playTo != null) {
      _data.fields.add(MapEntry('playTo', playTo));
    }
    if (location != null) {
      _data.fields.add(MapEntry('location', location));
    }
    if (servicePet != null) {
      _data.fields.add(MapEntry('servicePet', servicePet.toString()));
    }
    if (spayed != null) {
      _data.fields.add(MapEntry('spayed', spayed.toString()));
    }
    if (animalId != null) {
      _data.fields.add(MapEntry('animalId', animalId));
    }
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<EditResponse>(
            Options(method: 'PUT', headers: _headers, extra: _extra)
                .compose(_dio.options, '/animal/editPet',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = EditResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<AnimalProfileDetailModelResponse> getAnimalProfileDetail(
      animalProfileDetailsBody) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(animalProfileDetailsBody.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<AnimalProfileDetailModelResponse>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, '/animal/getPetDetails',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = AnimalProfileDetailModelResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<AnimalProfileDetailModelResponse> editAnimalProfileDetails(
      editAnimalProfileDetailsBody) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(editAnimalProfileDetailsBody.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<AnimalProfileDetailModelResponse>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, '/animal/editPetHabits',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = AnimalProfileDetailModelResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<EditResponse> editAnimalProfileMainDetails(
      editAnimalProfileMainDetailsBody) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(editAnimalProfileMainDetailsBody.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<EditResponse>(
            Options(method: 'PATCH', headers: _headers, extra: _extra)
                .compose(_dio.options, '/animal/editPetMainDetails',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = EditResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ListOfProfilesResponse> showPeoplesToFollow(
      showPeopleToFollowBody) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(showPeopleToFollowBody.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ListOfProfilesResponse>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/user/showPeopleToFollow',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ListOfProfilesResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<CommonResponse> sendFollowRequest(sendFollowRequestBody) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(sendFollowRequestBody.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<CommonResponse>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, '/post/follow',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = CommonResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<EditResponse> likeDislikePost(likeDislikePostBody) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(likeDislikePostBody.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<EditResponse>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, '/post/vote',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = EditResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ListOfProfilesForYouResponse> searchProfiles(
      searchProfilesBody) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(searchProfilesBody.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ListOfProfilesForYouResponse>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, '/user/search',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ListOfProfilesForYouResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ListOfForYouPostResponse> listOfForYouPost(counterBody) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(counterBody.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ListOfForYouPostResponse>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, '/post/foryoufeed',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ListOfForYouPostResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<CommonResponse> submitFeedback(submitFeedbackBody) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(submitFeedbackBody.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<CommonResponse>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, '/hamburger/submitFeedback',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = CommonResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<CommonResponse> getHelp(needHelpBody) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(needHelpBody.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<CommonResponse>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, '/hamburger/getHelp',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = CommonResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<GetPetDetailsResponse> getPetDetails() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<GetPetDetailsResponse>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, '/serviceBooking/getPetDetails',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = GetPetDetailsResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<BookARunResponse> bookARun(bookARunBody) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(bookARunBody.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<BookARunResponse>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, '/serviceBooking/serviceBooking',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = BookARunResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<GetPaymentDetailsResponse> getPaymentDetails(
      getPaymentDetailsBody) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(getPaymentDetailsBody.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<GetPaymentDetailsResponse>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, '/serviceBooking/generateOrderId',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = GetPaymentDetailsResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<SendDataResponse> setPaymentDetails(setPaymentDetailsBody) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(setPaymentDetailsBody.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<SendDataResponse>(
            Options(method: 'PATCH', headers: _headers, extra: _extra)
                .compose(_dio.options, '/service/postPayment',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = SendDataResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<MyAppointmentsResponse> getActiveAppointments() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<MyAppointmentsResponse>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(
                    _dio.options, '/serviceBooking/getmyactiveAppointments',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = MyAppointmentsResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<MyAppointmentsResponse> getBookedAppointments() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<MyAppointmentsResponse>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(
                    _dio.options, '/serviceBooking/getmybookedAppointments',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = MyAppointmentsResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<MyAppointmentsResponse> getPastAppointments() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<MyAppointmentsResponse>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, '/serviceBooking/getmypastAppointments',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = MyAppointmentsResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<GetAppointmentDetailsResponse> getAppointmentDetails(
      getAppointmentDetailsBody) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(getAppointmentDetailsBody.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<GetAppointmentDetailsResponse>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, '/serviceBooking/getAppointmentDetails',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = GetAppointmentDetailsResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<SendDataResponse> changeAppointmentStatus(
      changeAppointmentStatusBody) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(changeAppointmentStatusBody.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<SendDataResponse>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(
                    _dio.options, '/serviceBooking/changeAppointmentstatus',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = SendDataResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<GetScrollStatusResponse> getScrollStatus(getScrollStatusBody) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(getScrollStatusBody.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<GetScrollStatusResponse>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(
                    _dio.options, '/serviceBooking/getscrollAppointmentstatus',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = GetScrollStatusResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<GetReportResponse> getRunOneReport(getReportOneBody) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(getReportOneBody.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<GetReportResponse>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, '/serviceBooking/getReport',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = GetReportResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<GetReportResponse> getRunTwoReport(getReportTwoBody) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(getReportTwoBody.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<GetReportResponse>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, '/serviceBooking/getReport',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = GetReportResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<SendDataResponse> setRunOneRating(setRunOneRatingBody) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(setRunOneRatingBody.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<SendDataResponse>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, '/serviceBooking/giveRatingstoeachWalk',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = SendDataResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<SendDataResponse> setRunTwoRating(setRunTwoRatingBody) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(setRunTwoRatingBody.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<SendDataResponse>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, '/serviceBooking/giveRatingstoeachWalk',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = SendDataResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<SendDataResponse> setTestimony(setTestimonyBody) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(setTestimonyBody.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<SendDataResponse>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, '/serviceBooking/giveRatingstoeachWalk',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = SendDataResponse.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
