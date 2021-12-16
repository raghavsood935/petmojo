import 'package:freezed_annotation/freezed_annotation.dart';

part 'avatar_link_response.freezed.dart';
part 'avatar_link_response.g.dart';

@freezed
class AvatarLinkResponse with _$AvatarLinkResponse {
  AvatarLinkResponse._();

  factory AvatarLinkResponse({
    @JsonKey(name: "avatarLink")
        AvatarLinkInnerResponse? avatarLinkInnerResponse,
  }) = _AvatarLinkResponse;

  factory AvatarLinkResponse.fromJson(Map<String, dynamic> json) =>
      _$AvatarLinkResponseFromJson(json);
}

@freezed
class AvatarLinkInnerResponse with _$AvatarLinkInnerResponse {
  AvatarLinkInnerResponse._();

  factory AvatarLinkInnerResponse({
    @JsonKey(name: "image") String? image,
    @JsonKey(name: "thumbnail") String? thumbnail,
  }) = _AvatarLinkInnerResponse;

  factory AvatarLinkInnerResponse.fromJson(Map<String, dynamic> json) =>
      _$AvatarLinkInnerResponseFromJson(json);
}
