import 'package:final_homework/actions/index.dart';
import 'package:redux/redux.dart';

import '../models/index.dart';

Reducer<LocationState> locationReducer = combineReducers(<Reducer<LocationState>>[
  TypedReducer<LocationState, GetLocationSuccessful>(_getLocationSuccessful),
]);

LocationState _getLocationSuccessful(LocationState state, GetLocationSuccessful action) {
  return state.copyWith(location: action.location);
}
