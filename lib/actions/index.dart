library actions;

import 'package:final_homework/models/index.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth/login.dart';
part 'index.freezed.dart';
part 'auth/logout.dart';
part 'auth/create_user.dart';
part 'auth/initialize_user.dart';
part 'location/get_location.dart';
part 'location/listen_for_locations.dart';
part 'images/get_images.dart';
part 'auth/listen_for_users.dart';
part 'chat/send_message.dart';
part 'chat/listen_to_messages.dart';

typedef ActionResponse = void Function(dynamic action);
