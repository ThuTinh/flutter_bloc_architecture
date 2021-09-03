// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'purchase.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Purchase _$PurchaseFromJson(Map<String, dynamic> json) {
  return Purchase(
    boards: (json['boards'] as List<dynamic>?)
        ?.map((e) => Board.fromJson(e as Map<String, dynamic>))
        .toList(),
    orther: json['orther'] == null
        ? null
        : Orther.fromJson(json['orther'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$PurchaseToJson(Purchase instance) => <String, dynamic>{
      'boards': instance.boards,
      'orther': instance.orther,
    };
