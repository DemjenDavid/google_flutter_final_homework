part of actions;

@freezed
class ImageApi with _$ImageApi {
  const factory ImageApi() = ImageApiStart;

  const factory ImageApi.successful(List<ApiImage> images) = ImageApiSuccessful;

  const factory ImageApi.error(Object error, StackTrace stackTrace) = ImageApiError;
}
