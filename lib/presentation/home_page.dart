import 'package:final_homework/models/index.dart';
import 'package:final_homework/presentation/container/location_container.dart';
import 'package:final_homework/presentation/container/user_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import '../actions/index.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    final Store<AppState> store = StoreProvider.of<AppState>(context, listen: false);
    store.dispatch(const GetLocation());
  }

  @override
  Widget build(BuildContext context) {
    return UserLocationContainer(
      builder: (BuildContext context, UserLocation? location) {
        return UserContainer(builder: (BuildContext context, AppUser? user) {
          return Scaffold(
            appBar: AppBar(
              title: Text(user!.displayName),
              actions: <Widget>[
                IconButton(
                  icon: const Icon(Icons.power_settings_new),
                  onPressed: () {
                    StoreProvider.of<AppState>(context).dispatch(const Logout());
                  },
                )
              ],
            ),
            body: Center(
              child: location == null ? const CircularProgressIndicator() : Text("$location"),
            ),
          );
        });
      },
    );
  }
}
