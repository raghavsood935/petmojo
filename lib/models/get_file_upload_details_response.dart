import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_file_upload_details_response.freezed.dart';
part 'get_file_upload_details_response.g.dart';

@freezed
class GetFileUploadDetailsResponse with _$GetFileUploadDetailsResponse {
  GetFileUploadDetailsResponse._();

  factory GetFileUploadDetailsResponse({
    @JsonKey(name: "success") bool? success,
    @JsonKey(name: "videoUrls") GetFileUrlsResponse? fileUrls,
  }) = _GetFileUploadDetailsResponse;

  factory GetFileUploadDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$GetFileUploadDetailsResponseFromJson(json);
}

@freezed
class GetFileUrlsResponse with _$GetFileUrlsResponse {
  GetFileUrlsResponse._();

  factory GetFileUrlsResponse({
    @JsonKey(name: "url") String? url,
    @JsonKey(name: "fields") GetFileUploadDetailsFieldsResponse? fields,
  }) = _GetFileUrlsResponse;

  factory GetFileUrlsResponse.fromJson(Map<String, dynamic> json) =>
      _$GetFileUrlsResponseFromJson(json);
}

@freezed
class GetFileUploadDetailsFieldsResponse
    with _$GetFileUploadDetailsFieldsResponse {
  GetFileUploadDetailsFieldsResponse._();

  factory GetFileUploadDetailsFieldsResponse({
    @JsonKey(name: "key") String? key,
    @JsonKey(name: "bucket") String? bucket,
    @JsonKey(name: "X-Amz-Algorithm") String? xAmzAlgorithm,
    @JsonKey(name: "X-Amz-Credential") String? xAmzCredential,
    @JsonKey(name: "X-Amz-Date") String? xAmzDate,
    @JsonKey(name: "Policy") String? policy,
    @JsonKey(name: "X-Amz-Signature") String? xAmzSignature,
  }) = _GetFileUploadDetailsFieldsResponse;

  factory GetFileUploadDetailsFieldsResponse.fromJson(
          Map<String, dynamic> json) =>
      _$GetFileUploadDetailsFieldsResponseFromJson(json);
}
