import 'package:json_annotation/json_annotation.dart';

part 'art_image.g.dart';

@JsonSerializable()
class ArtImage {
  final int? id;

  @JsonKey(name: "art_id")
  final int? artId;

  @JsonKey(name: "created_at")
  final String? createdAt;

  @JsonKey(name: "delete_flg")
  final int? deleteFlg;

  @JsonKey(name: "image_path_1x")
  final String? imagePath1x;

  @JsonKey(name: "image_path_2x")
  final String? imagePath2x;

  @JsonKey(name: "thumbnail_path_1x")
  final String? thumbnailPath1x;

  @JsonKey(name: "thumbnail_path_2x")
  final String? thumbnailPath2x;

  @JsonKey(name: "updated_at")
  final String? updatedAt;

  ArtImage({
    this.id,
    this.artId,
    this.createdAt,
    this.deleteFlg,
    this.imagePath1x,
    this.imagePath2x,
    this.thumbnailPath1x,
    this.thumbnailPath2x,
    this.updatedAt,
  });

  factory ArtImage.fromJson(Map<String, dynamic> json) => _$ArtImageFromJson(json);

  Map<String, dynamic> toJson() => _$ArtImageToJson(this);
}
