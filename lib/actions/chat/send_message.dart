part of actions;

@freezed
class SendMessage with _$SendMessage {
  const factory SendMessage({required AppUser user, required String message}) = SendMessageStart;

  const factory SendMessage.successful() = SendMessageSuccessful;

  const factory SendMessage.error(Object error, StackTrace stackTrace) = SendMessageError;
}
