import 'package:json_annotation/json_annotation.dart';

import 'purchase.dart';
import 'sale.dart';

part 'boards.g.dart';

@JsonSerializable()
class Boards {
  final Purchase? purchase;
  final Sale? sale;

  Boards(this.purchase, this.sale);

  factory Boards.fromJson(Map<String, dynamic> json) => _$BoardsFromJson(json);

  Map<String, dynamic> toJson() => _$BoardsToJson(this);
}
