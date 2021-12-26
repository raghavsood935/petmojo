import 'package:json_annotation/json_annotation.dart';

part 'get_post_by_id.g.dart';

@JsonSerializable(explicitToJson: true)
class GetPostByIdBody {
  final String id;
  final String type;
  final int counter;

  GetPostByIdBody(this.id, this.type, this.counter);

  factory GetPostByIdBody.fromJson(Map<String, dynamic> json) =>
      _$GetPostByIdBodyFromJson(json);

  Map<String, dynamic> toJson() => _$GetPostByIdBodyToJson(this);
}
