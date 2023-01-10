import 'package:final_homework/reducer/auth_reducer.dart';
import 'package:final_homework/reducer/chat_reducer.dart';
import 'package:final_homework/reducer/location_reducer.dart';
import 'package:final_homework/reducer/users_reducer.dart';
import 'package:flutter/foundation.dart';
import 'package:redux/redux.dart';

import '../actions/index.dart';
import '../models/index.dart';

Reducer<AppState> reducer = combineReducers(<Reducer<AppState>>[
  (AppState state, dynamic action) {
    if (kDebugMode) {
      print(action);
    }
    return state;
  },
  _reducer,
  TypedReducer<AppState, LogoutSuccessful>(_logoutSuccessful),
]);

AppState _reducer(AppState state, dynamic action) {
  return state.copyWith(
    auth: authReducer(state.auth, action),
    location: locationReducer(state.location, action),
    users: usersReducer(state.users, action),
    messages: chatReducer(state.messages, action),
  );
}

AppState _logoutSuccessful(AppState state, LogoutSuccessful action) {
  return const AppState();
}
