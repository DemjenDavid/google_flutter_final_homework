import 'package:final_homework/actions/index.dart';
import 'package:final_homework/models/index.dart';
import 'package:final_homework/presentation/container/users_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

class MyDrawer extends Drawer {
  const MyDrawer({super.key, required this.user, required this.userList});

  final AppUser user;
  final List<AppUser> userList;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UsersContainer(builder: (BuildContext context, List<AppUser>? userList) {
            return UserAccountsDrawerHeader(
              decoration: const BoxDecoration(color: Colors.indigoAccent),
              accountName: Text(user.displayName),
              accountEmail: Text(user.email),
              currentAccountPicture: Image.network(
                userList!.where((AppUser element) => element.uid == user.uid).first.imageUrl ??
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ80s3vzgCm43hijlwou_lhl91pATI5HSZv_jGqebY&s",
              ),
            );
          }),
          ListTile(
            leading: const Icon(Icons.house),
            title: const Text("Home"),
            onTap: () {
              Navigator.of(context).pushNamed("/");
            },
          ),
          ListTile(
            leading: const Icon(Icons.map),
            title: const Text("Map"),
            onTap: () {
              Navigator.of(context).pushNamed("/map");
            },
          ),
          ListTile(
            leading: const Icon(Icons.image),
            title: const Text("Gallery"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.chat),
            title: const Text("Chat"),
            onTap: () {
              Navigator.of(context).pushNamed("/chat");
            },
          )
        ],
      ),
    );
  }
}

StatelessWidget getDrawer(AppUser user) {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        UserAccountsDrawerHeader(
          decoration: const BoxDecoration(color: Colors.indigoAccent),
          accountName: Text(user.displayName),
          accountEmail: Text(user.email),
          currentAccountPicture: Image.network(
            user.imageUrl ??
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ80s3vzgCm43hijlwou_lhl91pATI5HSZv_jGqebY&s",
          ),
        ),
        ListTile(
          leading: const Icon(Icons.house),
          title: const Text("Home"),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(Icons.map),
          title: const Text("Map"),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(Icons.image),
          title: const Text("Gallery"),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(Icons.chat),
          title: const Text("Chat"),
          onTap: () {},
        )
      ],
    ),
  );
}
