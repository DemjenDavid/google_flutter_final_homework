part of models;

@freezed
class UsersState with _$UsersState {
  const factory UsersState({
    @Default(<AppUser>[]) List<AppUser> users,
}) = UsersState$;

  factory UsersState.fromJson(Map<dynamic, dynamic> json) => _$UsersStateFromJson(Map<String, dynamic>.from(json));
}