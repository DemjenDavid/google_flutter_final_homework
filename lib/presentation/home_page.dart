import 'package:final_homework/models/index.dart';
import 'package:final_homework/presentation/container/location_container.dart';
import 'package:final_homework/presentation/container/user_container.dart';
import 'package:final_homework/presentation/container/users_container.dart';
import 'package:final_homework/presentation/drawer/app_drawer.dart';
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
    store.dispatch(const ListenForLocationsStart());
    store.dispatch(const ListenForUsersStart());
  }

  @override
  Widget build(BuildContext context) {
    return LocationsContainer(
      builder: (BuildContext context, List<UserLocation>? locations) {
        return UsersContainer(builder: (BuildContext context, List<AppUser>? userList) {
          return UserContainer(builder: (BuildContext context, AppUser? user) {
            return Scaffold(
              drawer: MyDrawer(
                user: user!,
                userList: userList!,
              ),
              appBar: AppBar(
                title: Text(user.displayName),
                actions: <Widget>[
                  IconButton(
                    icon: const Icon(Icons.power_settings_new),
                    onPressed: () {
                      StoreProvider.of<AppState>(context).dispatch(const Logout());
                    },
                  )
                ],
              ),
              body: null,
            );
          });
        });
      },
    );
  }
}
