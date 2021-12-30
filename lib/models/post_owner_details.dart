import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_owner_details.freezed.dart';
part 'post_owner_details.g.dart';

@freezed
class PostOwnerDetailsResponse with _$PostOwnerDetailsResponse {
  PostOwnerDetailsResponse._();

  factory PostOwnerDetailsResponse({
    @JsonKey(name: "postOwnerId") String? postOwnerId,
    @JsonKey(name: "postOwnerType") String? postOwnerType,
  }) = _PostOwnerDetailsResponse;

  factory PostOwnerDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$PostOwnerDetailsResponseFromJson(json);
}
