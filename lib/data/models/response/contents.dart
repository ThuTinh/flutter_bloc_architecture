import 'package:json_annotation/json_annotation.dart';

import 'art.dart';
import 'art_image.dart';
import 'boards.dart';

part 'contents.g.dart';

@JsonSerializable()
class Contents {
  final Art? art;

  @JsonKey(name: "art_image_list")
  final List<ArtImage>? artImageList;

  final Boards? boards;

  final List? token;

  final List? user;

  Contents({
    this.art,
    this.artImageList,
    this.boards,
    this.token,
    this.user,
  });

  factory Contents.fromJson(Map<String, dynamic> json) => _$ContentsFromJson(json);

  Map<String, dynamic> toJson() => _$ContentsToJson(this);
}
