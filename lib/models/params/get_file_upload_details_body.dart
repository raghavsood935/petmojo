import 'package:json_annotation/json_annotation.dart';

part 'get_file_upload_details_body.g.dart';

@JsonSerializable(explicitToJson: true)
class GetFileUploadDetailsBody {
  final String fileName;

  GetFileUploadDetailsBody(this.fileName);

  factory GetFileUploadDetailsBody.fromJson(Map<String, dynamic> json) =>
      _$GetFileUploadDetailsBodyFromJson(json);

  Map<String, dynamic> toJson() => _$GetFileUploadDetailsBodyToJson(this);
}
