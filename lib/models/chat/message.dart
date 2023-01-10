part of models;

@freezed
class Message with _$Message {
  const factory Message({
    required String uid,
    required String message,
    required String displayName,
    required String timestamp,
  }) = Message$;

  factory Message.fromJson(Map<dynamic, dynamic> json) => _$MessageFromJson(Map<String, dynamic>.from(json));
}
