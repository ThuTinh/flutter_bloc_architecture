// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'boards.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Boards _$BoardsFromJson(Map<String, dynamic> json) {
  return Boards(
    json['purchase'] == null
        ? null
        : Purchase.fromJson(json['purchase'] as Map<String, dynamic>),
    json['sale'] == null
        ? null
        : Sale.fromJson(json['sale'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$BoardsToJson(Boards instance) => <String, dynamic>{
      'purchase': instance.purchase,
      'sale': instance.sale,
    };
