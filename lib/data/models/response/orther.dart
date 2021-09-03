import 'package:json_annotation/json_annotation.dart';

part 'orther.g.dart';

@JsonSerializable()
class Orther {
  final String? share;
  final String? token;

  Orther({this.share, this.token});

  factory Orther.fromJson(Map<String, dynamic> json) => _$OrtherFromJson(json);

  Map<String, dynamic> toJson() => _$OrtherToJson(this);
}
