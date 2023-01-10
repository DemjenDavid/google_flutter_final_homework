// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of models;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppState _$AppStateFromJson(Map<String, dynamic> json) {
  return AppState$.fromJson(json);
}

/// @nodoc
mixin _$AppState {
  AuthState get auth => throw _privateConstructorUsedError;
  LocationState get location => throw _privateConstructorUsedError;
  UsersState get users => throw _privateConstructorUsedError;
  ChatState get messages => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppStateCopyWith<AppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res, AppState>;
  @useResult
  $Res call(
      {AuthState auth,
      LocationState location,
      UsersState users,
      ChatState messages});

  $AuthStateCopyWith<$Res> get auth;
  $LocationStateCopyWith<$Res> get location;
  $UsersStateCopyWith<$Res> get users;
  $ChatStateCopyWith<$Res> get messages;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res, $Val extends AppState>
    implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? auth = null,
    Object? location = null,
    Object? users = null,
    Object? messages = null,
  }) {
    return _then(_value.copyWith(
      auth: null == auth
          ? _value.auth
          : auth // ignore: cast_nullable_to_non_nullable
              as AuthState,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationState,
      users: null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as UsersState,
      messages: null == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as ChatState,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthStateCopyWith<$Res> get auth {
    return $AuthStateCopyWith<$Res>(_value.auth, (value) {
      return _then(_value.copyWith(auth: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationStateCopyWith<$Res> get location {
    return $LocationStateCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UsersStateCopyWith<$Res> get users {
    return $UsersStateCopyWith<$Res>(_value.users, (value) {
      return _then(_value.copyWith(users: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ChatStateCopyWith<$Res> get messages {
    return $ChatStateCopyWith<$Res>(_value.messages, (value) {
      return _then(_value.copyWith(messages: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AppState$CopyWith<$Res> implements $AppStateCopyWith<$Res> {
  factory _$$AppState$CopyWith(
          _$AppState$ value, $Res Function(_$AppState$) then) =
      __$$AppState$CopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AuthState auth,
      LocationState location,
      UsersState users,
      ChatState messages});

  @override
  $AuthStateCopyWith<$Res> get auth;
  @override
  $LocationStateCopyWith<$Res> get location;
  @override
  $UsersStateCopyWith<$Res> get users;
  @override
  $ChatStateCopyWith<$Res> get messages;
}

/// @nodoc
class __$$AppState$CopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$AppState$>
    implements _$$AppState$CopyWith<$Res> {
  __$$AppState$CopyWithImpl(
      _$AppState$ _value, $Res Function(_$AppState$) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? auth = null,
    Object? location = null,
    Object? users = null,
    Object? messages = null,
  }) {
    return _then(_$AppState$(
      auth: null == auth
          ? _value.auth
          : auth // ignore: cast_nullable_to_non_nullable
              as AuthState,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationState,
      users: null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as UsersState,
      messages: null == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as ChatState,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppState$ implements AppState$ {
  const _$AppState$(
      {this.auth = const AuthState(),
      this.location = const LocationState(),
      this.users = const UsersState(),
      this.messages = const ChatState()});

  factory _$AppState$.fromJson(Map<String, dynamic> json) =>
      _$$AppState$FromJson(json);

  @override
  @JsonKey()
  final AuthState auth;
  @override
  @JsonKey()
  final LocationState location;
  @override
  @JsonKey()
  final UsersState users;
  @override
  @JsonKey()
  final ChatState messages;

  @override
  String toString() {
    return 'AppState(auth: $auth, location: $location, users: $users, messages: $messages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppState$ &&
            (identical(other.auth, auth) || other.auth == auth) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.users, users) || other.users == users) &&
            (identical(other.messages, messages) ||
                other.messages == messages));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, auth, location, users, messages);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppState$CopyWith<_$AppState$> get copyWith =>
      __$$AppState$CopyWithImpl<_$AppState$>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppState$ToJson(
      this,
    );
  }
}

abstract class AppState$ implements AppState {
  const factory AppState$(
      {final AuthState auth,
      final LocationState location,
      final UsersState users,
      final ChatState messages}) = _$AppState$;

  factory AppState$.fromJson(Map<String, dynamic> json) = _$AppState$.fromJson;

  @override
  AuthState get auth;
  @override
  LocationState get location;
  @override
  UsersState get users;
  @override
  ChatState get messages;
  @override
  @JsonKey(ignore: true)
  _$$AppState$CopyWith<_$AppState$> get copyWith =>
      throw _privateConstructorUsedError;
}

AuthState _$AuthStateFromJson(Map<String, dynamic> json) {
  return AuthState$.fromJson(json);
}

/// @nodoc
mixin _$AuthState {
  AppUser? get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call({AppUser? user});

  $AppUserCopyWith<$Res>? get user;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AppUser?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AppUserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $AppUserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AuthState$CopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$$AuthState$CopyWith(
          _$AuthState$ value, $Res Function(_$AuthState$) then) =
      __$$AuthState$CopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AppUser? user});

  @override
  $AppUserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$AuthState$CopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthState$>
    implements _$$AuthState$CopyWith<$Res> {
  __$$AuthState$CopyWithImpl(
      _$AuthState$ _value, $Res Function(_$AuthState$) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$AuthState$(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AppUser?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthState$ implements AuthState$ {
  const _$AuthState$({this.user});

  factory _$AuthState$.fromJson(Map<String, dynamic> json) =>
      _$$AuthState$FromJson(json);

  @override
  final AppUser? user;

  @override
  String toString() {
    return 'AuthState(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthState$ &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthState$CopyWith<_$AuthState$> get copyWith =>
      __$$AuthState$CopyWithImpl<_$AuthState$>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthState$ToJson(
      this,
    );
  }
}

abstract class AuthState$ implements AuthState {
  const factory AuthState$({final AppUser? user}) = _$AuthState$;

  factory AuthState$.fromJson(Map<String, dynamic> json) =
      _$AuthState$.fromJson;

  @override
  AppUser? get user;
  @override
  @JsonKey(ignore: true)
  _$$AuthState$CopyWith<_$AuthState$> get copyWith =>
      throw _privateConstructorUsedError;
}

AppUser _$AppUserFromJson(Map<String, dynamic> json) {
  return AppUser$.fromJson(json);
}

/// @nodoc
mixin _$AppUser {
  String get uid => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppUserCopyWith<AppUser> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppUserCopyWith<$Res> {
  factory $AppUserCopyWith(AppUser value, $Res Function(AppUser) then) =
      _$AppUserCopyWithImpl<$Res, AppUser>;
  @useResult
  $Res call({String uid, String email, String displayName, String? imageUrl});
}

/// @nodoc
class _$AppUserCopyWithImpl<$Res, $Val extends AppUser>
    implements $AppUserCopyWith<$Res> {
  _$AppUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? email = null,
    Object? displayName = null,
    Object? imageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppUser$CopyWith<$Res> implements $AppUserCopyWith<$Res> {
  factory _$$AppUser$CopyWith(
          _$AppUser$ value, $Res Function(_$AppUser$) then) =
      __$$AppUser$CopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String uid, String email, String displayName, String? imageUrl});
}

/// @nodoc
class __$$AppUser$CopyWithImpl<$Res>
    extends _$AppUserCopyWithImpl<$Res, _$AppUser$>
    implements _$$AppUser$CopyWith<$Res> {
  __$$AppUser$CopyWithImpl(_$AppUser$ _value, $Res Function(_$AppUser$) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? email = null,
    Object? displayName = null,
    Object? imageUrl = freezed,
  }) {
    return _then(_$AppUser$(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppUser$ implements AppUser$ {
  const _$AppUser$(
      {required this.uid,
      required this.email,
      required this.displayName,
      this.imageUrl});

  factory _$AppUser$.fromJson(Map<String, dynamic> json) =>
      _$$AppUser$FromJson(json);

  @override
  final String uid;
  @override
  final String email;
  @override
  final String displayName;
  @override
  final String? imageUrl;

  @override
  String toString() {
    return 'AppUser(uid: $uid, email: $email, displayName: $displayName, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppUser$ &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, uid, email, displayName, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppUser$CopyWith<_$AppUser$> get copyWith =>
      __$$AppUser$CopyWithImpl<_$AppUser$>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppUser$ToJson(
      this,
    );
  }
}

abstract class AppUser$ implements AppUser {
  const factory AppUser$(
      {required final String uid,
      required final String email,
      required final String displayName,
      final String? imageUrl}) = _$AppUser$;

  factory AppUser$.fromJson(Map<String, dynamic> json) = _$AppUser$.fromJson;

  @override
  String get uid;
  @override
  String get email;
  @override
  String get displayName;
  @override
  String? get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$AppUser$CopyWith<_$AppUser$> get copyWith =>
      throw _privateConstructorUsedError;
}

UserLocation _$UserLocationFromJson(Map<String, dynamic> json) {
  return UserLocation$.fromJson(json);
}

/// @nodoc
mixin _$UserLocation {
  String get uid => throw _privateConstructorUsedError;
  double get lat => throw _privateConstructorUsedError;
  double get lng => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserLocationCopyWith<UserLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserLocationCopyWith<$Res> {
  factory $UserLocationCopyWith(
          UserLocation value, $Res Function(UserLocation) then) =
      _$UserLocationCopyWithImpl<$Res, UserLocation>;
  @useResult
  $Res call({String uid, double lat, double lng});
}

/// @nodoc
class _$UserLocationCopyWithImpl<$Res, $Val extends UserLocation>
    implements $UserLocationCopyWith<$Res> {
  _$UserLocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? lat = null,
    Object? lng = null,
  }) {
    return _then(_value.copyWith(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserLocation$CopyWith<$Res>
    implements $UserLocationCopyWith<$Res> {
  factory _$$UserLocation$CopyWith(
          _$UserLocation$ value, $Res Function(_$UserLocation$) then) =
      __$$UserLocation$CopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String uid, double lat, double lng});
}

/// @nodoc
class __$$UserLocation$CopyWithImpl<$Res>
    extends _$UserLocationCopyWithImpl<$Res, _$UserLocation$>
    implements _$$UserLocation$CopyWith<$Res> {
  __$$UserLocation$CopyWithImpl(
      _$UserLocation$ _value, $Res Function(_$UserLocation$) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? lat = null,
    Object? lng = null,
  }) {
    return _then(_$UserLocation$(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserLocation$ implements UserLocation$ {
  const _$UserLocation$(
      {required this.uid, required this.lat, required this.lng});

  factory _$UserLocation$.fromJson(Map<String, dynamic> json) =>
      _$$UserLocation$FromJson(json);

  @override
  final String uid;
  @override
  final double lat;
  @override
  final double lng;

  @override
  String toString() {
    return 'UserLocation(uid: $uid, lat: $lat, lng: $lng)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserLocation$ &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, uid, lat, lng);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserLocation$CopyWith<_$UserLocation$> get copyWith =>
      __$$UserLocation$CopyWithImpl<_$UserLocation$>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserLocation$ToJson(
      this,
    );
  }
}

abstract class UserLocation$ implements UserLocation {
  const factory UserLocation$(
      {required final String uid,
      required final double lat,
      required final double lng}) = _$UserLocation$;

  factory UserLocation$.fromJson(Map<String, dynamic> json) =
      _$UserLocation$.fromJson;

  @override
  String get uid;
  @override
  double get lat;
  @override
  double get lng;
  @override
  @JsonKey(ignore: true)
  _$$UserLocation$CopyWith<_$UserLocation$> get copyWith =>
      throw _privateConstructorUsedError;
}

LocationState _$LocationStateFromJson(Map<String, dynamic> json) {
  return LocationState$.fromJson(json);
}

/// @nodoc
mixin _$LocationState {
  UserLocation? get location => throw _privateConstructorUsedError;
  List<UserLocation> get locations => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationStateCopyWith<LocationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationStateCopyWith<$Res> {
  factory $LocationStateCopyWith(
          LocationState value, $Res Function(LocationState) then) =
      _$LocationStateCopyWithImpl<$Res, LocationState>;
  @useResult
  $Res call({UserLocation? location, List<UserLocation> locations});

  $UserLocationCopyWith<$Res>? get location;
}

/// @nodoc
class _$LocationStateCopyWithImpl<$Res, $Val extends LocationState>
    implements $LocationStateCopyWith<$Res> {
  _$LocationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = freezed,
    Object? locations = null,
  }) {
    return _then(_value.copyWith(
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as UserLocation?,
      locations: null == locations
          ? _value.locations
          : locations // ignore: cast_nullable_to_non_nullable
              as List<UserLocation>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserLocationCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $UserLocationCopyWith<$Res>(_value.location!, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LocationState$CopyWith<$Res>
    implements $LocationStateCopyWith<$Res> {
  factory _$$LocationState$CopyWith(
          _$LocationState$ value, $Res Function(_$LocationState$) then) =
      __$$LocationState$CopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserLocation? location, List<UserLocation> locations});

  @override
  $UserLocationCopyWith<$Res>? get location;
}

/// @nodoc
class __$$LocationState$CopyWithImpl<$Res>
    extends _$LocationStateCopyWithImpl<$Res, _$LocationState$>
    implements _$$LocationState$CopyWith<$Res> {
  __$$LocationState$CopyWithImpl(
      _$LocationState$ _value, $Res Function(_$LocationState$) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = freezed,
    Object? locations = null,
  }) {
    return _then(_$LocationState$(
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as UserLocation?,
      locations: null == locations
          ? _value._locations
          : locations // ignore: cast_nullable_to_non_nullable
              as List<UserLocation>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationState$ implements LocationState$ {
  const _$LocationState$(
      {this.location,
      final List<UserLocation> locations = const <UserLocation>[]})
      : _locations = locations;

  factory _$LocationState$.fromJson(Map<String, dynamic> json) =>
      _$$LocationState$FromJson(json);

  @override
  final UserLocation? location;
  final List<UserLocation> _locations;
  @override
  @JsonKey()
  List<UserLocation> get locations {
    if (_locations is EqualUnmodifiableListView) return _locations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_locations);
  }

  @override
  String toString() {
    return 'LocationState(location: $location, locations: $locations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationState$ &&
            (identical(other.location, location) ||
                other.location == location) &&
            const DeepCollectionEquality()
                .equals(other._locations, _locations));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, location, const DeepCollectionEquality().hash(_locations));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationState$CopyWith<_$LocationState$> get copyWith =>
      __$$LocationState$CopyWithImpl<_$LocationState$>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationState$ToJson(
      this,
    );
  }
}

abstract class LocationState$ implements LocationState {
  const factory LocationState$(
      {final UserLocation? location,
      final List<UserLocation> locations}) = _$LocationState$;

  factory LocationState$.fromJson(Map<String, dynamic> json) =
      _$LocationState$.fromJson;

  @override
  UserLocation? get location;
  @override
  List<UserLocation> get locations;
  @override
  @JsonKey(ignore: true)
  _$$LocationState$CopyWith<_$LocationState$> get copyWith =>
      throw _privateConstructorUsedError;
}

ApiImage _$ApiImageFromJson(Map<String, dynamic> json) {
  return ApiImage$.fromJson(json);
}

/// @nodoc
mixin _$ApiImage {
  String? get description => throw _privateConstructorUsedError;
  num get likes => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'urls')
  Urls get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'user')
  UnsplashUser get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiImageCopyWith<ApiImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiImageCopyWith<$Res> {
  factory $ApiImageCopyWith(ApiImage value, $Res Function(ApiImage) then) =
      _$ApiImageCopyWithImpl<$Res, ApiImage>;
  @useResult
  $Res call(
      {String? description,
      num likes,
      @JsonKey(name: 'created_at') String date,
      @JsonKey(name: 'urls') Urls url,
      @JsonKey(name: 'user') UnsplashUser user});

  $UrlsCopyWith<$Res> get url;
  $UnsplashUserCopyWith<$Res> get user;
}

/// @nodoc
class _$ApiImageCopyWithImpl<$Res, $Val extends ApiImage>
    implements $ApiImageCopyWith<$Res> {
  _$ApiImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = freezed,
    Object? likes = null,
    Object? date = null,
    Object? url = null,
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      likes: null == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as num,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as Urls,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UnsplashUser,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UrlsCopyWith<$Res> get url {
    return $UrlsCopyWith<$Res>(_value.url, (value) {
      return _then(_value.copyWith(url: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UnsplashUserCopyWith<$Res> get user {
    return $UnsplashUserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ApiImage$CopyWith<$Res> implements $ApiImageCopyWith<$Res> {
  factory _$$ApiImage$CopyWith(
          _$ApiImage$ value, $Res Function(_$ApiImage$) then) =
      __$$ApiImage$CopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? description,
      num likes,
      @JsonKey(name: 'created_at') String date,
      @JsonKey(name: 'urls') Urls url,
      @JsonKey(name: 'user') UnsplashUser user});

  @override
  $UrlsCopyWith<$Res> get url;
  @override
  $UnsplashUserCopyWith<$Res> get user;
}

/// @nodoc
class __$$ApiImage$CopyWithImpl<$Res>
    extends _$ApiImageCopyWithImpl<$Res, _$ApiImage$>
    implements _$$ApiImage$CopyWith<$Res> {
  __$$ApiImage$CopyWithImpl(
      _$ApiImage$ _value, $Res Function(_$ApiImage$) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = freezed,
    Object? likes = null,
    Object? date = null,
    Object? url = null,
    Object? user = null,
  }) {
    return _then(_$ApiImage$(
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      likes: null == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as num,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as Urls,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UnsplashUser,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiImage$ implements ApiImage$ {
  const _$ApiImage$(
      {required this.description,
      required this.likes,
      @JsonKey(name: 'created_at') required this.date,
      @JsonKey(name: 'urls') required this.url,
      @JsonKey(name: 'user') required this.user});

  factory _$ApiImage$.fromJson(Map<String, dynamic> json) =>
      _$$ApiImage$FromJson(json);

  @override
  final String? description;
  @override
  final num likes;
  @override
  @JsonKey(name: 'created_at')
  final String date;
  @override
  @JsonKey(name: 'urls')
  final Urls url;
  @override
  @JsonKey(name: 'user')
  final UnsplashUser user;

  @override
  String toString() {
    return 'ApiImage(description: $description, likes: $likes, date: $date, url: $url, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiImage$ &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.likes, likes) || other.likes == likes) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, description, likes, date, url, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiImage$CopyWith<_$ApiImage$> get copyWith =>
      __$$ApiImage$CopyWithImpl<_$ApiImage$>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiImage$ToJson(
      this,
    );
  }
}

abstract class ApiImage$ implements ApiImage {
  const factory ApiImage$(
      {required final String? description,
      required final num likes,
      @JsonKey(name: 'created_at') required final String date,
      @JsonKey(name: 'urls') required final Urls url,
      @JsonKey(name: 'user') required final UnsplashUser user}) = _$ApiImage$;

  factory ApiImage$.fromJson(Map<String, dynamic> json) = _$ApiImage$.fromJson;

  @override
  String? get description;
  @override
  num get likes;
  @override
  @JsonKey(name: 'created_at')
  String get date;
  @override
  @JsonKey(name: 'urls')
  Urls get url;
  @override
  @JsonKey(name: 'user')
  UnsplashUser get user;
  @override
  @JsonKey(ignore: true)
  _$$ApiImage$CopyWith<_$ApiImage$> get copyWith =>
      throw _privateConstructorUsedError;
}

Urls _$UrlsFromJson(Map<String, dynamic> json) {
  return Urls$.fromJson(json);
}

/// @nodoc
mixin _$Urls {
  String get full => throw _privateConstructorUsedError;
  String get regular => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UrlsCopyWith<Urls> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UrlsCopyWith<$Res> {
  factory $UrlsCopyWith(Urls value, $Res Function(Urls) then) =
      _$UrlsCopyWithImpl<$Res, Urls>;
  @useResult
  $Res call({String full, String regular});
}

/// @nodoc
class _$UrlsCopyWithImpl<$Res, $Val extends Urls>
    implements $UrlsCopyWith<$Res> {
  _$UrlsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? full = null,
    Object? regular = null,
  }) {
    return _then(_value.copyWith(
      full: null == full
          ? _value.full
          : full // ignore: cast_nullable_to_non_nullable
              as String,
      regular: null == regular
          ? _value.regular
          : regular // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$Urls$CopyWith<$Res> implements $UrlsCopyWith<$Res> {
  factory _$$Urls$CopyWith(_$Urls$ value, $Res Function(_$Urls$) then) =
      __$$Urls$CopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String full, String regular});
}

/// @nodoc
class __$$Urls$CopyWithImpl<$Res> extends _$UrlsCopyWithImpl<$Res, _$Urls$>
    implements _$$Urls$CopyWith<$Res> {
  __$$Urls$CopyWithImpl(_$Urls$ _value, $Res Function(_$Urls$) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? full = null,
    Object? regular = null,
  }) {
    return _then(_$Urls$(
      full: null == full
          ? _value.full
          : full // ignore: cast_nullable_to_non_nullable
              as String,
      regular: null == regular
          ? _value.regular
          : regular // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Urls$ implements Urls$ {
  const _$Urls$({required this.full, required this.regular});

  factory _$Urls$.fromJson(Map<String, dynamic> json) => _$$Urls$FromJson(json);

  @override
  final String full;
  @override
  final String regular;

  @override
  String toString() {
    return 'Urls(full: $full, regular: $regular)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Urls$ &&
            (identical(other.full, full) || other.full == full) &&
            (identical(other.regular, regular) || other.regular == regular));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, full, regular);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$Urls$CopyWith<_$Urls$> get copyWith =>
      __$$Urls$CopyWithImpl<_$Urls$>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Urls$ToJson(
      this,
    );
  }
}

abstract class Urls$ implements Urls {
  const factory Urls$(
      {required final String full, required final String regular}) = _$Urls$;

  factory Urls$.fromJson(Map<String, dynamic> json) = _$Urls$.fromJson;

  @override
  String get full;
  @override
  String get regular;
  @override
  @JsonKey(ignore: true)
  _$$Urls$CopyWith<_$Urls$> get copyWith => throw _privateConstructorUsedError;
}

UnsplashUser _$UnsplashUserFromJson(Map<String, dynamic> json) {
  return UnsplashUser$.fromJson(json);
}

/// @nodoc
mixin _$UnsplashUser {
  String? get username => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get bio => throw _privateConstructorUsedError;
  @JsonKey(name: 'instagram_username')
  String? get instagramUsername => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UnsplashUserCopyWith<UnsplashUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnsplashUserCopyWith<$Res> {
  factory $UnsplashUserCopyWith(
          UnsplashUser value, $Res Function(UnsplashUser) then) =
      _$UnsplashUserCopyWithImpl<$Res, UnsplashUser>;
  @useResult
  $Res call(
      {String? username,
      String? name,
      String? bio,
      @JsonKey(name: 'instagram_username') String? instagramUsername});
}

/// @nodoc
class _$UnsplashUserCopyWithImpl<$Res, $Val extends UnsplashUser>
    implements $UnsplashUserCopyWith<$Res> {
  _$UnsplashUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = freezed,
    Object? name = freezed,
    Object? bio = freezed,
    Object? instagramUsername = freezed,
  }) {
    return _then(_value.copyWith(
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      instagramUsername: freezed == instagramUsername
          ? _value.instagramUsername
          : instagramUsername // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UnsplashUser$CopyWith<$Res>
    implements $UnsplashUserCopyWith<$Res> {
  factory _$$UnsplashUser$CopyWith(
          _$UnsplashUser$ value, $Res Function(_$UnsplashUser$) then) =
      __$$UnsplashUser$CopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? username,
      String? name,
      String? bio,
      @JsonKey(name: 'instagram_username') String? instagramUsername});
}

/// @nodoc
class __$$UnsplashUser$CopyWithImpl<$Res>
    extends _$UnsplashUserCopyWithImpl<$Res, _$UnsplashUser$>
    implements _$$UnsplashUser$CopyWith<$Res> {
  __$$UnsplashUser$CopyWithImpl(
      _$UnsplashUser$ _value, $Res Function(_$UnsplashUser$) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = freezed,
    Object? name = freezed,
    Object? bio = freezed,
    Object? instagramUsername = freezed,
  }) {
    return _then(_$UnsplashUser$(
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      instagramUsername: freezed == instagramUsername
          ? _value.instagramUsername
          : instagramUsername // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UnsplashUser$ implements UnsplashUser$ {
  const _$UnsplashUser$(
      {required this.username,
      required this.name,
      required this.bio,
      @JsonKey(name: 'instagram_username') required this.instagramUsername});

  factory _$UnsplashUser$.fromJson(Map<String, dynamic> json) =>
      _$$UnsplashUser$FromJson(json);

  @override
  final String? username;
  @override
  final String? name;
  @override
  final String? bio;
  @override
  @JsonKey(name: 'instagram_username')
  final String? instagramUsername;

  @override
  String toString() {
    return 'UnsplashUser(username: $username, name: $name, bio: $bio, instagramUsername: $instagramUsername)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnsplashUser$ &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            (identical(other.instagramUsername, instagramUsername) ||
                other.instagramUsername == instagramUsername));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, username, name, bio, instagramUsername);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnsplashUser$CopyWith<_$UnsplashUser$> get copyWith =>
      __$$UnsplashUser$CopyWithImpl<_$UnsplashUser$>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UnsplashUser$ToJson(
      this,
    );
  }
}

abstract class UnsplashUser$ implements UnsplashUser {
  const factory UnsplashUser$(
      {required final String? username,
      required final String? name,
      required final String? bio,
      @JsonKey(name: 'instagram_username')
          required final String? instagramUsername}) = _$UnsplashUser$;

  factory UnsplashUser$.fromJson(Map<String, dynamic> json) =
      _$UnsplashUser$.fromJson;

  @override
  String? get username;
  @override
  String? get name;
  @override
  String? get bio;
  @override
  @JsonKey(name: 'instagram_username')
  String? get instagramUsername;
  @override
  @JsonKey(ignore: true)
  _$$UnsplashUser$CopyWith<_$UnsplashUser$> get copyWith =>
      throw _privateConstructorUsedError;
}

ImageState _$ImageStateFromJson(Map<String, dynamic> json) {
  return ImageState$.fromJson(json);
}

/// @nodoc
mixin _$ImageState {
  List<ApiImage> get favorites => throw _privateConstructorUsedError;
  List<ApiImage> get images => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageStateCopyWith<ImageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageStateCopyWith<$Res> {
  factory $ImageStateCopyWith(
          ImageState value, $Res Function(ImageState) then) =
      _$ImageStateCopyWithImpl<$Res, ImageState>;
  @useResult
  $Res call({List<ApiImage> favorites, List<ApiImage> images});
}

/// @nodoc
class _$ImageStateCopyWithImpl<$Res, $Val extends ImageState>
    implements $ImageStateCopyWith<$Res> {
  _$ImageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favorites = null,
    Object? images = null,
  }) {
    return _then(_value.copyWith(
      favorites: null == favorites
          ? _value.favorites
          : favorites // ignore: cast_nullable_to_non_nullable
              as List<ApiImage>,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ApiImage>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImageState$CopyWith<$Res>
    implements $ImageStateCopyWith<$Res> {
  factory _$$ImageState$CopyWith(
          _$ImageState$ value, $Res Function(_$ImageState$) then) =
      __$$ImageState$CopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ApiImage> favorites, List<ApiImage> images});
}

/// @nodoc
class __$$ImageState$CopyWithImpl<$Res>
    extends _$ImageStateCopyWithImpl<$Res, _$ImageState$>
    implements _$$ImageState$CopyWith<$Res> {
  __$$ImageState$CopyWithImpl(
      _$ImageState$ _value, $Res Function(_$ImageState$) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favorites = null,
    Object? images = null,
  }) {
    return _then(_$ImageState$(
      favorites: null == favorites
          ? _value._favorites
          : favorites // ignore: cast_nullable_to_non_nullable
              as List<ApiImage>,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ApiImage>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageState$ implements ImageState$ {
  const _$ImageState$(
      {final List<ApiImage> favorites = const <ApiImage>[],
      final List<ApiImage> images = const <ApiImage>[]})
      : _favorites = favorites,
        _images = images;

  factory _$ImageState$.fromJson(Map<String, dynamic> json) =>
      _$$ImageState$FromJson(json);

  final List<ApiImage> _favorites;
  @override
  @JsonKey()
  List<ApiImage> get favorites {
    if (_favorites is EqualUnmodifiableListView) return _favorites;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favorites);
  }

  final List<ApiImage> _images;
  @override
  @JsonKey()
  List<ApiImage> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  String toString() {
    return 'ImageState(favorites: $favorites, images: $images)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageState$ &&
            const DeepCollectionEquality()
                .equals(other._favorites, _favorites) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_favorites),
      const DeepCollectionEquality().hash(_images));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageState$CopyWith<_$ImageState$> get copyWith =>
      __$$ImageState$CopyWithImpl<_$ImageState$>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageState$ToJson(
      this,
    );
  }
}

abstract class ImageState$ implements ImageState {
  const factory ImageState$(
      {final List<ApiImage> favorites,
      final List<ApiImage> images}) = _$ImageState$;

  factory ImageState$.fromJson(Map<String, dynamic> json) =
      _$ImageState$.fromJson;

  @override
  List<ApiImage> get favorites;
  @override
  List<ApiImage> get images;
  @override
  @JsonKey(ignore: true)
  _$$ImageState$CopyWith<_$ImageState$> get copyWith =>
      throw _privateConstructorUsedError;
}

UsersState _$UsersStateFromJson(Map<String, dynamic> json) {
  return UsersState$.fromJson(json);
}

/// @nodoc
mixin _$UsersState {
  List<AppUser> get users => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UsersStateCopyWith<UsersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersStateCopyWith<$Res> {
  factory $UsersStateCopyWith(
          UsersState value, $Res Function(UsersState) then) =
      _$UsersStateCopyWithImpl<$Res, UsersState>;
  @useResult
  $Res call({List<AppUser> users});
}

/// @nodoc
class _$UsersStateCopyWithImpl<$Res, $Val extends UsersState>
    implements $UsersStateCopyWith<$Res> {
  _$UsersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
  }) {
    return _then(_value.copyWith(
      users: null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<AppUser>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UsersState$CopyWith<$Res>
    implements $UsersStateCopyWith<$Res> {
  factory _$$UsersState$CopyWith(
          _$UsersState$ value, $Res Function(_$UsersState$) then) =
      __$$UsersState$CopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<AppUser> users});
}

/// @nodoc
class __$$UsersState$CopyWithImpl<$Res>
    extends _$UsersStateCopyWithImpl<$Res, _$UsersState$>
    implements _$$UsersState$CopyWith<$Res> {
  __$$UsersState$CopyWithImpl(
      _$UsersState$ _value, $Res Function(_$UsersState$) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
  }) {
    return _then(_$UsersState$(
      users: null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<AppUser>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UsersState$ implements UsersState$ {
  const _$UsersState$({final List<AppUser> users = const <AppUser>[]})
      : _users = users;

  factory _$UsersState$.fromJson(Map<String, dynamic> json) =>
      _$$UsersState$FromJson(json);

  final List<AppUser> _users;
  @override
  @JsonKey()
  List<AppUser> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  String toString() {
    return 'UsersState(users: $users)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UsersState$ &&
            const DeepCollectionEquality().equals(other._users, _users));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_users));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UsersState$CopyWith<_$UsersState$> get copyWith =>
      __$$UsersState$CopyWithImpl<_$UsersState$>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UsersState$ToJson(
      this,
    );
  }
}

abstract class UsersState$ implements UsersState {
  const factory UsersState$({final List<AppUser> users}) = _$UsersState$;

  factory UsersState$.fromJson(Map<String, dynamic> json) =
      _$UsersState$.fromJson;

  @override
  List<AppUser> get users;
  @override
  @JsonKey(ignore: true)
  _$$UsersState$CopyWith<_$UsersState$> get copyWith =>
      throw _privateConstructorUsedError;
}

Message _$MessageFromJson(Map<String, dynamic> json) {
  return Message$.fromJson(json);
}

/// @nodoc
mixin _$Message {
  String get uid => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;
  String get timestamp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageCopyWith<Message> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageCopyWith<$Res> {
  factory $MessageCopyWith(Message value, $Res Function(Message) then) =
      _$MessageCopyWithImpl<$Res, Message>;
  @useResult
  $Res call({String uid, String message, String displayName, String timestamp});
}

/// @nodoc
class _$MessageCopyWithImpl<$Res, $Val extends Message>
    implements $MessageCopyWith<$Res> {
  _$MessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? message = null,
    Object? displayName = null,
    Object? timestamp = null,
  }) {
    return _then(_value.copyWith(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$Message$CopyWith<$Res> implements $MessageCopyWith<$Res> {
  factory _$$Message$CopyWith(
          _$Message$ value, $Res Function(_$Message$) then) =
      __$$Message$CopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String uid, String message, String displayName, String timestamp});
}

/// @nodoc
class __$$Message$CopyWithImpl<$Res>
    extends _$MessageCopyWithImpl<$Res, _$Message$>
    implements _$$Message$CopyWith<$Res> {
  __$$Message$CopyWithImpl(_$Message$ _value, $Res Function(_$Message$) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? message = null,
    Object? displayName = null,
    Object? timestamp = null,
  }) {
    return _then(_$Message$(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Message$ implements Message$ {
  const _$Message$(
      {required this.uid,
      required this.message,
      required this.displayName,
      required this.timestamp});

  factory _$Message$.fromJson(Map<String, dynamic> json) =>
      _$$Message$FromJson(json);

  @override
  final String uid;
  @override
  final String message;
  @override
  final String displayName;
  @override
  final String timestamp;

  @override
  String toString() {
    return 'Message(uid: $uid, message: $message, displayName: $displayName, timestamp: $timestamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Message$ &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, uid, message, displayName, timestamp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$Message$CopyWith<_$Message$> get copyWith =>
      __$$Message$CopyWithImpl<_$Message$>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Message$ToJson(
      this,
    );
  }
}

abstract class Message$ implements Message {
  const factory Message$(
      {required final String uid,
      required final String message,
      required final String displayName,
      required final String timestamp}) = _$Message$;

  factory Message$.fromJson(Map<String, dynamic> json) = _$Message$.fromJson;

  @override
  String get uid;
  @override
  String get message;
  @override
  String get displayName;
  @override
  String get timestamp;
  @override
  @JsonKey(ignore: true)
  _$$Message$CopyWith<_$Message$> get copyWith =>
      throw _privateConstructorUsedError;
}

ChatState _$ChatStateFromJson(Map<String, dynamic> json) {
  return ChatState$.fromJson(json);
}

/// @nodoc
mixin _$ChatState {
  List<Message> get messages => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatStateCopyWith<ChatState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatStateCopyWith<$Res> {
  factory $ChatStateCopyWith(ChatState value, $Res Function(ChatState) then) =
      _$ChatStateCopyWithImpl<$Res, ChatState>;
  @useResult
  $Res call({List<Message> messages});
}

/// @nodoc
class _$ChatStateCopyWithImpl<$Res, $Val extends ChatState>
    implements $ChatStateCopyWith<$Res> {
  _$ChatStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messages = null,
  }) {
    return _then(_value.copyWith(
      messages: null == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatState$CopyWith<$Res> implements $ChatStateCopyWith<$Res> {
  factory _$$ChatState$CopyWith(
          _$ChatState$ value, $Res Function(_$ChatState$) then) =
      __$$ChatState$CopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Message> messages});
}

/// @nodoc
class __$$ChatState$CopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$ChatState$>
    implements _$$ChatState$CopyWith<$Res> {
  __$$ChatState$CopyWithImpl(
      _$ChatState$ _value, $Res Function(_$ChatState$) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messages = null,
  }) {
    return _then(_$ChatState$(
      messages: null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatState$ implements ChatState$ {
  const _$ChatState$({final List<Message> messages = const <Message>[]})
      : _messages = messages;

  factory _$ChatState$.fromJson(Map<String, dynamic> json) =>
      _$$ChatState$FromJson(json);

  final List<Message> _messages;
  @override
  @JsonKey()
  List<Message> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  String toString() {
    return 'ChatState(messages: $messages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatState$ &&
            const DeepCollectionEquality().equals(other._messages, _messages));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_messages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatState$CopyWith<_$ChatState$> get copyWith =>
      __$$ChatState$CopyWithImpl<_$ChatState$>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatState$ToJson(
      this,
    );
  }
}

abstract class ChatState$ implements ChatState {
  const factory ChatState$({final List<Message> messages}) = _$ChatState$;

  factory ChatState$.fromJson(Map<String, dynamic> json) =
      _$ChatState$.fromJson;

  @override
  List<Message> get messages;
  @override
  @JsonKey(ignore: true)
  _$$ChatState$CopyWith<_$ChatState$> get copyWith =>
      throw _privateConstructorUsedError;
}
