part of models;

@freezed
class ChatState with _$ChatState {
  const factory ChatState({
    @Default(<Message>[]) List<Message> messages,
  }) = ChatState$;

  factory ChatState.fromJson(Map<dynamic, dynamic> json) => _$ChatStateFromJson(Map<String, dynamic>.from(json));
}
