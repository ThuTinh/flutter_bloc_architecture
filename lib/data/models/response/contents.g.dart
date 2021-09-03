// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contents.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Contents _$ContentsFromJson(Map<String, dynamic> json) {
  return Contents(
    art: json['art'] == null
        ? null
        : Art.fromJson(json['art'] as Map<String, dynamic>),
    artImageList: (json['art_image_list'] as List<dynamic>?)
        ?.map((e) => ArtImage.fromJson(e as Map<String, dynamic>))
        .toList(),
    boards: json['boards'] == null
        ? null
        : Boards.fromJson(json['boards'] as Map<String, dynamic>),
    token: json['token'] as List<dynamic>?,
    user: json['user'] as List<dynamic>?,
  );
}

Map<String, dynamic> _$ContentsToJson(Contents instance) => <String, dynamic>{
      'art': instance.art,
      'art_image_list': instance.artImageList,
      'boards': instance.boards,
      'token': instance.token,
      'user': instance.user,
    };
