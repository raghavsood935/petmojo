import 'package:json_annotation/json_annotation.dart';

part 'get_data_body.g.dart';

@JsonSerializable(explicitToJson: true)
class GetDataBody {
  final String type;

  GetDataBody(this.type);

  factory GetDataBody.fromJson(Map<String, dynamic> json) =>
      _$GetDataBodyFromJson(json);

  Map<String, dynamic> toJson() => _$GetDataBodyToJson(this);
}
