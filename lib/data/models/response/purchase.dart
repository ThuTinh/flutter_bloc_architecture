import 'package:json_annotation/json_annotation.dart';
import 'package:myarts/data/models/response/board.dart';
import 'package:myarts/data/models/response/orther.dart';

part 'purchase.g.dart';

@JsonSerializable()
class Purchase {
  final List<Board>? boards;
  final Orther? orther;

  Purchase({this.boards, this.orther});

  factory Purchase.fromJson(Map<String, dynamic> json) => _$PurchaseFromJson(json);

  Map<String, dynamic> toJson() => _$PurchaseToJson(this);
}
