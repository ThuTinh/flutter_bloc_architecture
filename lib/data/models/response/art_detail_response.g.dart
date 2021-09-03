// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'art_detail_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArtDetailResponse _$ArtDetailResponseFromJson(Map<String, dynamic> json) {
  return ArtDetailResponse(
    contents: json['contents'] == null
        ? null
        : Contents.fromJson(json['contents'] as Map<String, dynamic>),
    status: json['status'] as bool?,
    messages: json['messages'] as List<dynamic>?,
  );
}

Map<String, dynamic> _$ArtDetailResponseToJson(ArtDetailResponse instance) =>
    <String, dynamic>{
      'contents': instance.contents,
      'status': instance.status,
      'messages': instance.messages,
    };
