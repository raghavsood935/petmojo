import 'package:json_annotation/json_annotation.dart';

part 'reorder_a_run_body.g.dart';

@JsonSerializable(explicitToJson: true)
class ReorderARunBody {
  final String bookingId;

  ReorderARunBody(this.bookingId);

  factory ReorderARunBody.fromJson(Map<String, dynamic> json) =>
      _$ReorderARunBodyFromJson(json);

  Map<String, dynamic> toJson() => _$ReorderARunBodyToJson(this);
}
