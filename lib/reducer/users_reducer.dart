import 'package:final_homework/actions/index.dart';
import 'package:final_homework/models/index.dart';
import 'package:redux/redux.dart';

Reducer<UsersState> usersReducer = combineReducers(<Reducer<UsersState>>[
  TypedReducer<UsersState, OnUsersEvent>(_onUserEvent),
]);

UsersState _onUserEvent(UsersState state, OnUsersEvent action) {
  return state.copyWith(users: action.users);
}
