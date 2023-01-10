import 'package:final_homework/actions/index.dart';
import 'package:final_homework/models/index.dart';
import 'package:redux/redux.dart';

Reducer<ChatState> chatReducer = combineReducers(<Reducer<ChatState>>[
  TypedReducer<ChatState, OnMessagesEvent>(_onMessageevent),
]);

ChatState _onMessageevent(ChatState state, OnMessagesEvent action) {
  return state.copyWith(messages: action.messages);
}
