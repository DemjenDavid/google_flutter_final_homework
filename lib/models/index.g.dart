// GENERATED CODE - DO NOT MODIFY BY HAND

part of models;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppState$ _$$AppState$FromJson(Map<String, dynamic> json) => _$AppState$(
      auth: json['auth'] == null ? const AuthState() : AuthState.fromJson(json['auth'] as Map<String, dynamic>),
      location: json['location'] == null
          ? const LocationState()
          : LocationState.fromJson(json['location'] as Map<String, dynamic>),
      users: json['users'] == null ? const UsersState() : UsersState.fromJson(json['users'] as Map<String, dynamic>),
      messages:
          json['messages'] == null ? const ChatState() : ChatState.fromJson(json['messages'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AppState$ToJson(_$AppState$ instance) => <String, dynamic>{
      'auth': instance.auth,
      'location': instance.location,
      'users': instance.users,
      'messages': instance.messages,
    };

_$AuthState$ _$$AuthState$FromJson(Map<String, dynamic> json) => _$AuthState$(
      user: json['user'] == null ? null : AppUser.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AuthState$ToJson(_$AuthState$ instance) => <String, dynamic>{
      'user': instance.user,
    };

_$AppUser$ _$$AppUser$FromJson(Map<String, dynamic> json) => _$AppUser$(
      uid: json['uid'] as String,
      email: json['email'] as String,
      displayName: json['displayName'] as String,
      imageUrl: json['imageUrl'] as String?,
    );

Map<String, dynamic> _$$AppUser$ToJson(_$AppUser$ instance) => <String, dynamic>{
      'uid': instance.uid,
      'email': instance.email,
      'displayName': instance.displayName,
      'imageUrl': instance.imageUrl,
    };

_$UserLocation$ _$$UserLocation$FromJson(Map<String, dynamic> json) => _$UserLocation$(
      uid: json['uid'] as String,
      lat: (json['lat'] as num).toDouble(),
      lng: (json['lng'] as num).toDouble(),
    );

Map<String, dynamic> _$$UserLocation$ToJson(_$UserLocation$ instance) => <String, dynamic>{
      'uid': instance.uid,
      'lat': instance.lat,
      'lng': instance.lng,
    };

_$LocationState$ _$$LocationState$FromJson(Map<String, dynamic> json) => _$LocationState$(
      location: json['location'] == null ? null : UserLocation.fromJson(json['location'] as Map<String, dynamic>),
      locations: (json['locations'] as List<dynamic>?)
              ?.map((e) => UserLocation.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <UserLocation>[],
    );

Map<String, dynamic> _$$LocationState$ToJson(_$LocationState$ instance) => <String, dynamic>{
      'location': instance.location,
      'locations': instance.locations,
    };

_$ApiImage$ _$$ApiImage$FromJson(Map<String, dynamic> json) => _$ApiImage$(
      description: json['description'] as String?,
      likes: json['likes'] as num,
      date: json['created_at'] as String,
      url: Urls.fromJson(json['urls'] as Map<String, dynamic>),
      user: UnsplashUser.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ApiImage$ToJson(_$ApiImage$ instance) => <String, dynamic>{
      'description': instance.description,
      'likes': instance.likes,
      'created_at': instance.date,
      'urls': instance.url,
      'user': instance.user,
    };

_$Urls$ _$$Urls$FromJson(Map<String, dynamic> json) => _$Urls$(
      full: json['full'] as String,
      regular: json['regular'] as String,
    );

Map<String, dynamic> _$$Urls$ToJson(_$Urls$ instance) => <String, dynamic>{
      'full': instance.full,
      'regular': instance.regular,
    };

_$UnsplashUser$ _$$UnsplashUser$FromJson(Map<String, dynamic> json) => _$UnsplashUser$(
      username: json['username'] as String?,
      name: json['name'] as String?,
      bio: json['bio'] as String?,
      instagramUsername: json['instagram_username'] as String?,
    );

Map<String, dynamic> _$$UnsplashUser$ToJson(_$UnsplashUser$ instance) => <String, dynamic>{
      'username': instance.username,
      'name': instance.name,
      'bio': instance.bio,
      'instagram_username': instance.instagramUsername,
    };

_$ImageState$ _$$ImageState$FromJson(Map<String, dynamic> json) => _$ImageState$(
      favorites:
          (json['favorites'] as List<dynamic>?)?.map((e) => ApiImage.fromJson(e as Map<String, dynamic>)).toList() ??
              const <ApiImage>[],
      images: (json['images'] as List<dynamic>?)?.map((e) => ApiImage.fromJson(e as Map<String, dynamic>)).toList() ??
          const <ApiImage>[],
    );

Map<String, dynamic> _$$ImageState$ToJson(_$ImageState$ instance) => <String, dynamic>{
      'favorites': instance.favorites,
      'images': instance.images,
    };

_$UsersState$ _$$UsersState$FromJson(Map<String, dynamic> json) => _$UsersState$(
      users: (json['users'] as List<dynamic>?)?.map((e) => AppUser.fromJson(e as Map<String, dynamic>)).toList() ??
          const <AppUser>[],
    );

Map<String, dynamic> _$$UsersState$ToJson(_$UsersState$ instance) => <String, dynamic>{
      'users': instance.users,
    };

_$Message$ _$$Message$FromJson(Map<String, dynamic> json) => _$Message$(
      uid: json['uid'] as String,
      message: json['message'] as String,
      displayName: json['displayName'] as String,
      timestamp: json['timestamp'] as String,
    );

Map<String, dynamic> _$$Message$ToJson(_$Message$ instance) => <String, dynamic>{
      'uid': instance.uid,
      'message': instance.message,
      'displayName': instance.displayName,
      'timestamp': instance.timestamp,
    };

_$ChatState$ _$$ChatState$FromJson(Map<String, dynamic> json) => _$ChatState$(
      messages:
          (json['messages'] as List<dynamic>?)?.map((e) => Message.fromJson(e as Map<String, dynamic>)).toList() ??
              const <Message>[],
    );

Map<String, dynamic> _$$ChatState$ToJson(_$ChatState$ instance) => <String, dynamic>{
      'messages': instance.messages,
    };
