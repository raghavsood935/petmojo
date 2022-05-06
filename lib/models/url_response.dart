import 'package:freezed_annotation/freezed_annotation.dart';

part 'url_response.freezed.dart';
part 'url_response.g.dart';

@freezed
class UrlResponse with _$UrlResponse {
  UrlResponse._();

  factory UrlResponse({
    @JsonKey(name: "url") String? url,
  }) = _UrlResponse;

  factory UrlResponse.fromJson(Map<String, dynamic> json) =>
      _$UrlResponseFromJson(json);
}
