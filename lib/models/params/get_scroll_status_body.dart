import 'package:json_annotation/json_annotation.dart';

part 'get_scroll_status_body.g.dart';

@JsonSerializable(explicitToJson: true)
class GetScrollStatusBody {
  final String bookingDetailsId;
  final int date;

  GetScrollStatusBody(this.bookingDetailsId, this.date);

  factory GetScrollStatusBody.fromJson(Map<String, dynamic> json) =>
      _$GetScrollStatusBodyFromJson(json);

  Map<String, dynamic> toJson() => _$GetScrollStatusBodyToJson(this);
}
