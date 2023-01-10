part of actions;

@freezed
class ListenForMessages with _$ListenForMessages {
  const factory ListenForMessages.start() = ListenForMessagesStart;

  const factory ListenForMessages.done() = ListenForMessagesDone;

  const factory ListenForMessages.event(List<Message> messages) = OnMessagesEvent;

  const factory ListenForMessages.error(Object error, StackTrace stackTrace) = _ListenForMessagesError;
}
