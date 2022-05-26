import 'package:json_annotation/json_annotation.dart';
part 'upload_file_body.g.dart';

@JsonSerializable(explicitToJson: true)
class UploadFileBody {
  final String fileName;

  UploadFileBody(this.fileName);

  factory UploadFileBody.fromJson(Map<String, dynamic> json) =>
      _$UploadFileBodyFromJson(json);

  Map<String, dynamic> toJson() => _$UploadFileBodyToJson(this);
}
