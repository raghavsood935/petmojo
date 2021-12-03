import 'package:json_annotation/json_annotation.dart';
part 'counter_body.g.dart';

@JsonSerializable(explicitToJson: true)
class CounterBody {
  final int counter;

  CounterBody(this.counter);

  factory CounterBody.fromJson(Map<String, dynamic> json) =>
      _$CounterBodyFromJson(json);

  Map<String, dynamic> toJson() => _$CounterBodyToJson(this);
}
