import 'package:final_homework/models/index.dart';
import 'package:final_homework/presentation/container/location_container.dart';
import 'package:final_homework/presentation/container/user_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:latlong2/latlong.dart';
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
  }

  @override
  Widget build(BuildContext context) {
    return LocationsContainer(
      builder: (BuildContext context, List<UserLocation>? locations) {
        return UserContainer(builder: (BuildContext context, AppUser? user) {
          final UserLocation location = locations!.where((UserLocation element) => element.uid == user!.uid).first;
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
                                point: LatLng(loc.lat,loc.lng),
                                builder: (BuildContext context){
                                  if(loc.uid == location.uid) {
                                    return const Icon(Icons.location_history, color: Colors.red,);

                                  } else {
                                    return const Icon(Icons.location_history, color: Colors.blue,);
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
      },
    );
  }
}
