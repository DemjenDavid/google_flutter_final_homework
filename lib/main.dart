import 'dart:async';

import 'package:final_homework/actions/index.dart';
import 'package:final_homework/data/auth_api.dart';
import 'package:final_homework/data/user_location_api.dart';
import 'package:final_homework/epics/app_epics.dart';
import 'package:final_homework/firebase_options.dart';
import 'package:final_homework/presentation/chat_page.dart';
import 'package:final_homework/presentation/home.dart';
import 'package:final_homework/reducer/reducer.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:location/location.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';
import 'models/index.dart';
import 'package:flutter_redux/flutter_redux.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  final AuthApi authApi = AuthApi(auth: FirebaseAuth.instance);
  final LocationApi locApi = LocationApi(location: Location());
  final AppEpics epics = AppEpics(authApi: authApi, locApi: locApi);
  final StreamController<dynamic> controller = StreamController<dynamic>();
  final Store<AppState> store = Store<AppState>(
    reducer,
    initialState: const AppState(),
    middleware: <Middleware<AppState>>[
      EpicMiddleware<AppState>(epics.epic),
      (Store<AppState> store, dynamic action, NextDispatcher next){
        next(action);
        controller.add(action);
      },
    ],
  );
  store.dispatch(const InitializeUser());
  await controller.stream.
      where((dynamic action)=> action is InitializeUserSuccessful || action is InitializeUserError)
      .first;
  runApp(MyApp(store: store));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.store});

  final Store<AppState> store;

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        title: 'Group App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routes: <String, WidgetBuilder>{
          '/': (BuildContext context) => const Home(),
          '/chat': (BuildContext context) => const ChatPage()
        },
      ),
    );
  }
}
