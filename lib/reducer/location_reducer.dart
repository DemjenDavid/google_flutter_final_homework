import 'package:final_homework/actions/index.dart';
import 'package:redux/redux.dart';

import '../models/index.dart';

Reducer<LocationState> locationReducer = combineReducers(<Reducer<LocationState>>[
  TypedReducer<LocationState, GetLocationSuccessful>(_getLocationSuccessful),
  TypedReducer<LocationState, OnLocationsEvent>(_onLocationsEvent),
]);

LocationState _getLocationSuccessful(LocationState state, GetLocationSuccessful action) {
  return state.copyWith(location: action.location);
}

LocationState _onLocationsEvent(LocationState state, action) {
  return state.copyWith(locations: action.locations);
}
