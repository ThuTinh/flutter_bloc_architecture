import 'package:json_annotation/json_annotation.dart';
part 'art.g.dart';

@JsonSerializable()
class Art {
  @JsonKey(name: "art_attributes")
  final String? artAttributes;

  @JsonKey(name: "art_created_at")
  final String? artCreatedAt;

  @JsonKey(name: "art_description")
  final String? artDescription;

  @JsonKey(name: "art_media")
  final String? artMedia;

  @JsonKey(name: "art_released_at")
  final String? artReleasedAt;

  @JsonKey(name: "art_updated_at")
  final String? artUpdatedAt;

  @JsonKey(name: "artist_attributes")
  final String? artistAttributes;

  @JsonKey(name: "artist_created_at")
  final String? artistCreatedAt;

  @JsonKey(name: "artist_description")
  final String? artistDescription;

  @JsonKey(name: "artist_id")
  final int? artistId;

  @JsonKey(name: "artist_name_en")
  final String? artistNameEn;

  @JsonKey(name: "artist_updated_at")
  final String? artistUpdatedAt;

  @JsonKey(name: "before_ratio")
  final double? beforeRatio;

  @JsonKey(name: "can_owner_certificate")
  final int? canOwnerCertificate;

  @JsonKey(name: "exhibit_type")
  final int? exhibitType;

  @JsonKey(name: "exhibit_user_id")
  final int? exhibitUserId;

  @JsonKey(name: "facebook")
  final String? facebook;

  @JsonKey(name: "first_ratio")
  final double? firstRatio;

  @JsonKey(name: "first_token_price")
  final double? firstTokenPrice;

  @JsonKey(name: "full_purchase_user_id")
  final int? fullPurchaseUserId;

  final int? id;

  @JsonKey(name: "market_price")
  final double? marketPrice;

  final String? since;

  final String? size;

  final int? status;

  final String? style;

  final String? title;

  final int? token;

  @JsonKey(name: "total_token")
  final int? totalToken;

  final String? twitter;

  final int? type;

  @JsonKey(name: "user_id")
  final int? userId;

  @JsonKey(name: "user_nickname")
  final String? userNickname;

  @JsonKey(name: "yesterday_token")
  final int? yesterdayToken;

  Art({
    this.artAttributes,
    this.artCreatedAt,
    this.artDescription,
    this.artMedia,
    this.artReleasedAt,
    this.artUpdatedAt,
    this.artistAttributes,
    this.artistCreatedAt,
    this.artistDescription,
    this.artistId,
    this.artistNameEn,
    this.artistUpdatedAt,
    this.beforeRatio,
    this.canOwnerCertificate,
    this.exhibitType,
    this.exhibitUserId,
    this.facebook,
    this.firstRatio,
    this.firstTokenPrice,
    this.fullPurchaseUserId,
    this.id,
    this.marketPrice,
    this.since,
    this.size,
    this.status,
    this.style,
    this.title,
    this.token,
    this.totalToken,
    this.twitter,
    this.type,
    this.userId,
    this.userNickname,
    this.yesterdayToken,
  });

  factory Art.fromJson(Map<String, dynamic> json) => _$ArtFromJson(json);

  Map<String, dynamic> toJson() => _$ArtToJson(this);
}
