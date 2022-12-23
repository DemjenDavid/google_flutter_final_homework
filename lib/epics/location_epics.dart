import 'package:final_homework/data/user_location_api.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/transformers.dart';

import '../actions/index.dart';
import '../data/auth_api.dart';
import '../models/index.dart';

class LocationEpics {
  const LocationEpics(this.api);

  final LocationApi api;

  Epic<AppState> get epic {
    return combineEpics(<Epic<AppState>>[
      TypedEpic<AppState, GetLocationStart>(_getLocationStart),
      _listenForLocationsStart,
    ]);
  }

  Stream<dynamic> _getLocationStart(Stream<dynamic> actions, EpicStore<AppState> store) {
    return actions.whereType<GetLocationStart>().flatMap((GetLocationStart action) {
      return Stream<void>.value(null) //
          .flatMap<dynamic>((_) => api.getLocation(store.state.auth.user!.uid))
          .takeUntil(actions.whereType<ListenForLocationsDone>())
          .ignoreElements()
          .cast<void>()
          .onErrorReturnWith((Object error, StackTrace stackTrace) => GetLocation.error(error, stackTrace));
    });
  }

  Stream<dynamic> _listenForLocationsStart(Stream<dynamic> actions, EpicStore<AppState> store) {
    return actions.whereType<ListenForLocationsStart>().flatMap((ListenForLocationsStart action) {
      return Stream<void>.value(null)
          .flatMap((_) => api.listenLocations())
          .map((List<UserLocation> locations) => ListenForLocations.event(locations))
          .takeUntil(actions.whereType<ListenForLocationsDone>())
          .onErrorReturnWith((Object error, StackTrace stackTrace) => ListenForLocations.error(error, stackTrace));
    });
  }
}
