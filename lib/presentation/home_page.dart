import 'package:final_homework/models/index.dart';
import 'package:final_homework/presentation/container/user_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

import '../actions/index.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
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
      );
    });
  }
}
