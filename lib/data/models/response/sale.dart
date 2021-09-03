import 'package:json_annotation/json_annotation.dart';
import 'board.dart';
import 'orther.dart';

part 'sale.g.dart';

@JsonSerializable()
class Sale {
  final List<Board>? boards;
  final Orther? orther;

  Sale({this.boards, this.orther});

  factory Sale.fromJson(Map<String, dynamic> json) => _$SaleFromJson(json);

  Map<String, dynamic> toJson() => _$SaleToJson(this);
}
