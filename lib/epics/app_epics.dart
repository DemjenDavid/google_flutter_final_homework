import 'package:final_homework/data/auth_api.dart';
import 'package:redux_epics/redux_epics.dart';
import '../models/index.dart';
import 'auth_epics.dart';

class AppEpics {
  const AppEpics({required this.authApi});
  final AuthApi authApi;

  Epic<AppState> get epic {
    return combineEpics(<Epic<AppState>>[
      AuthEpics(authApi).epic,
    ]);
  }
}
