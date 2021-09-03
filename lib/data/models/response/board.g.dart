// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'board.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Board _$BoardFromJson(Map<String, dynamic> json) {
  return Board(
    amount: (json['amount'] as num?)?.toDouble(),
    share: json['share'] as String?,
    token: json['token'] as String?,
  );
}

Map<String, dynamic> _$BoardToJson(Board instance) => <String, dynamic>{
      'amount': instance.amount,
      'share': instance.share,
      'token': instance.token,
    };
