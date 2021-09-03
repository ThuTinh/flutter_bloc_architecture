// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sale.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Sale _$SaleFromJson(Map<String, dynamic> json) {
  return Sale(
    boards: (json['boards'] as List<dynamic>?)
        ?.map((e) => Board.fromJson(e as Map<String, dynamic>))
        .toList(),
    orther: json['orther'] == null
        ? null
        : Orther.fromJson(json['orther'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SaleToJson(Sale instance) => <String, dynamic>{
      'boards': instance.boards,
      'orther': instance.orther,
    };
