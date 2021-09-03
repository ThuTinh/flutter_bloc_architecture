import 'package:json_annotation/json_annotation.dart';

import 'contents.dart';

part 'art_detail_response.g.dart';

@JsonSerializable()
class ArtDetailResponse {
  final Contents? contents;
  final bool? status;
  final List? messages;

  ArtDetailResponse({this.contents, this.status, this.messages});

  factory ArtDetailResponse.fromJson(Map<String, dynamic> json) => _$ArtDetailResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ArtDetailResponseToJson(this);
}
