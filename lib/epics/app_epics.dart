import 'package:final_homework/data/auth_api.dart';
import 'package:final_homework/data/user_location_api.dart';
import 'package:final_homework/epics/location_epics.dart';
import 'package:redux_epics/redux_epics.dart';
import '../models/index.dart';
import 'auth_epics.dart';

class AppEpics {
  const AppEpics({required this.authApi, required this.locApi});
  final AuthApi authApi;
  final LocationApi locApi;

  Epic<AppState> get epic {
    return combineEpics(<Epic<AppState>>[
      AuthEpics(authApi).epic,
      LocationEpics(locApi).epic,
    ]);
  }
}
