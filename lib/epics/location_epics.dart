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
    ]);
  }

  Stream<dynamic> _getLocationStart(Stream<GetLocationStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((GetLocationStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => api.getLocation())
          .map((UserLocation? location) => GetLocation.successful(location))
          .onErrorReturnWith((Object error, StackTrace stackTrace) => GetLocation.error(error, stackTrace));
    });
  }
}
