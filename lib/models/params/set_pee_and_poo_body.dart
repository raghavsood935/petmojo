import 'package:json_annotation/json_annotation.dart';

part 'set_pee_and_poo_body.g.dart';

@JsonSerializable(explicitToJson: true)
class SetPeeAndPooBody {
  final bool pee;
  final bool poo;

  SetPeeAndPooBody(this.pee, this.poo);

  factory SetPeeAndPooBody.fromJson(Map<String, dynamic> json) =>
      _$SetPeeAndPooBodyFromJson(json);

  Map<String, dynamic> toJson() => _$SetPeeAndPooBodyToJson(this);
}
