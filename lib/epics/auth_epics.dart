import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/transformers.dart';

import '../actions/index.dart';
import '../data/auth_api.dart';
import '../models/index.dart';

class AuthEpics {
  const AuthEpics(this.authApi);

  final AuthApi authApi;

  Epic<AppState> get epic {
    return combineEpics(<Epic<AppState>>[
      TypedEpic<AppState, LoginStart>(_loginStart),
      TypedEpic<AppState, LogoutStart>(_logoutStart),
      TypedEpic<AppState, CreateUserStart>(_createUserStart),
      TypedEpic<AppState, InitializeUserStart>(_initializeUser),
      _listenForUsersStart,
    ]);
  }

  Stream<dynamic> _loginStart(Stream<LoginStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((LoginStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => authApi.login(email: action.email, password: action.password))
          .map((AppUser user) => Login.successful(user))
          .onErrorReturnWith((Object error, StackTrace stackTrace) => Login.error(error, stackTrace))
          .doOnData(action.response);
    });
  }

  Stream<void> _logoutStart(Stream<LogoutStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((LogoutStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => authApi.logout())
          .map((_) => const Logout.successful())
          .onErrorReturnWith((Object error, StackTrace stackTrace) => Logout.error(error, stackTrace));
    });
  }

  Stream<dynamic> _createUserStart(Stream<CreateUserStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((CreateUserStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => authApi.createUser(email: action.email, password: action.password))
          .map((AppUser user) => CreateUser.successful(user))
          .onErrorReturnWith((Object error, StackTrace stackTrace) => CreateUser.error(error, stackTrace))
          .doOnData(action.response);
    });
  }

  Stream<void> _initializeUser(Stream<InitializeUserStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((InitializeUserStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => authApi.getUser())
          .map((AppUser? user) => InitializeUser.successful(user))
          .onErrorReturnWith((Object error, StackTrace stackTrace) => InitializeUser.error(error, stackTrace));
    });
  }

  Stream<dynamic> _listenForUsersStart(Stream<dynamic> actions, EpicStore<AppState> store) {
    return actions.whereType<ListenForUsersStart>().flatMap((ListenForUsersStart action) {
      return Stream<void>.value(null)
          .flatMap((_) => authApi.getUsers())
          .map((List<AppUser> users) => ListenForUsers.event(users))
          .takeUntil(actions.whereType<ListenForUsersDone>())
          .onErrorReturnWith((Object error, StackTrace stackTrace) => ListenForUsers.error(error, stackTrace));
    });
  }
}
