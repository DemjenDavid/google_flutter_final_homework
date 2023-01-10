part of models;

@freezed
class ImageState with _$ImageState {
  const factory ImageState({
    @Default(<ApiImage>[]) List<ApiImage> favorites,
    @Default(<ApiImage>[]) List<ApiImage> images,
  }) = ImageState$;

  factory ImageState.fromJson(Map<dynamic, dynamic> json) => _$ImageStateFromJson(Map<String, dynamic>.from(json));
}
