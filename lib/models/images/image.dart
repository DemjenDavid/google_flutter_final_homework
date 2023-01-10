part of models;

@freezed
class ApiImage with _$ApiImage {
  const factory ApiImage({
    required String? description,
    required num likes,
    @JsonKey(name: 'created_at') required String date,
    @JsonKey(name: 'urls') required Urls url,
    @JsonKey(name: 'user') required UnsplashUser user,
  }) = ApiImage$;

  factory ApiImage.fromJson(Map<dynamic, dynamic> json) => _$ApiImageFromJson(Map<String, dynamic>.from(json));
}

@freezed
class Urls with _$Urls {
  const factory Urls({
    required String full,
    required String regular,
  }) = Urls$;

  factory Urls.fromJson(Map<dynamic, dynamic> json) => _$UrlsFromJson(Map<String, dynamic>.from(json));
}

@freezed
class UnsplashUser with _$UnsplashUser {
  const factory UnsplashUser({
    required String? username,
    required String? name,
    required String? bio,
    @JsonKey(name: 'instagram_username') required String? instagramUsername,
  }) = UnsplashUser$;

  factory UnsplashUser.fromJson(Map<dynamic, dynamic> json) => _$UnsplashUserFromJson(Map<String, dynamic>.from(json));
}
