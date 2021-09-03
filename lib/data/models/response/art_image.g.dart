// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'art_image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArtImage _$ArtImageFromJson(Map<String, dynamic> json) {
  return ArtImage(
    id: json['id'] as int?,
    artId: json['art_id'] as int?,
    createdAt: json['created_at'] as String?,
    deleteFlg: json['delete_flg'] as int?,
    imagePath1x: json['image_path_1x'] as String?,
    imagePath2x: json['image_path_2x'] as String?,
    thumbnailPath1x: json['thumbnail_path_1x'] as String?,
    thumbnailPath2x: json['thumbnail_path_2x'] as String?,
    updatedAt: json['updated_at'] as String?,
  );
}

Map<String, dynamic> _$ArtImageToJson(ArtImage instance) => <String, dynamic>{
      'id': instance.id,
      'art_id': instance.artId,
      'created_at': instance.createdAt,
      'delete_flg': instance.deleteFlg,
      'image_path_1x': instance.imagePath1x,
      'image_path_2x': instance.imagePath2x,
      'thumbnail_path_1x': instance.thumbnailPath1x,
      'thumbnail_path_2x': instance.thumbnailPath2x,
      'updated_at': instance.updatedAt,
    };
