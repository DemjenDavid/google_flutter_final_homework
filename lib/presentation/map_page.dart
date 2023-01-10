import 'package:final_homework/presentation/container/users_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import 'package:latlong2/latlong.dart';
import '../actions/index.dart';
import '../models/index.dart';
import 'container/location_container.dart';
import 'container/user_container.dart';
import 'drawer/app_drawer.dart';

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  @override
  void initState() {
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
            UserLocation? location;
            for (UserLocation loc in locations!) {
              if (loc.uid == user!.uid) {
                location = loc;
              }
            }
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
              body: Center(
                child: location == null
                    ? const CircularProgressIndicator()
                    : FlutterMap(
                        options: MapOptions(center: LatLng(location.lat, location.lng), zoom: 7),
                        children: <Widget>[
                          TileLayer(
                            urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                          ),
                          MarkerLayer(
                            markers: <Marker>[
                              for (final UserLocation loc in locations)
                                Marker(
                                  point: LatLng(loc.lat, loc.lng),
                                  builder: (BuildContext context) {
                                    if (loc.uid == location!.uid) {
                                      return const Icon(
                                        Icons.location_history,
                                        color: Colors.red,
                                      );
                                    } else {
                                      return GestureDetector(
                                        onTap: () {
                                          final AppUser user =
                                              userList.where((AppUser element) => element.uid == loc.uid).first;
                                          setState(() {
                                            showDialog(
                                                context: context,
                                                builder: (BuildContext context) {
                                                  return AlertDialog(
                                                    content: SizedBox(
                                                        width: 200,
                                                        height: 250,
                                                        child: Column(
                                                          mainAxisAlignment: MainAxisAlignment.center,
                                                          crossAxisAlignment: CrossAxisAlignment.center,
                                                          children: <Widget>[
                                                            user.imageUrl != null
                                                                ? Image.network(user.imageUrl!)
                                                                : const Text('<no img>'),
                                                            const SizedBox(
                                                              height: 10,
                                                            ),
                                                            Text(user.displayName,
                                                                style: const TextStyle(fontSize: 20)),
                                                            const SizedBox(
                                                              height: 10,
                                                            ),
                                                            Text(user.email),
                                                          ],
                                                        )),
                                                  );
                                                });
                                          });
                                        },
                                        child: const Icon(
                                          Icons.location_history,
                                          color: Colors.blue,
                                        ),
                                      );
                                    }
                                  },
                                )
                            ],
                          )
                        ],
                      ),
              ),
            );
          });
        });
      },
    );
  }
}
