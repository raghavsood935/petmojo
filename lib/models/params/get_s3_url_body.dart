import 'package:json_annotation/json_annotation.dart';

part 'get_s3_url_body.g.dart';

@JsonSerializable(explicitToJson: true)
class GetS3UrlBody {
  final String fileName;
  GetS3UrlBody(
    this.fileName,
  );

  factory GetS3UrlBody.fromJson(Map<String, dynamic> json) =>
      _$GetS3UrlBodyFromJson(json);

  Map<String, dynamic> toJson() => _$GetS3UrlBodyToJson(this);
}
