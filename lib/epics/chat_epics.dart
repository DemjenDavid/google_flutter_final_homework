import 'package:final_homework/actions/index.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/transformers.dart';

import '../data/chat_api.dart';
import '../models/index.dart';

class ChatEpics{
  const ChatEpics(this.chatApi);
  final ChatApi chatApi;
  Epic<AppState> get epic {
    return combineEpics(<Epic<AppState>>[
      TypedEpic<AppState, SendMessageStart>(_sendMessageStart),
      _listenForMessagesStart,
    ]);
  }

  Stream<void> _sendMessageStart(Stream<SendMessageStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((SendMessageStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => chatApi.sendMessage(user: action.user, text: action.message))
          .map((_) => const SendMessage.successful())
          .onErrorReturnWith((Object error, StackTrace stackTrace) => SendMessage.error(error, stackTrace));
    });
  }

  Stream<dynamic> _listenForMessagesStart(Stream<dynamic> actions, EpicStore<AppState> store) {
    return actions.whereType<ListenForMessagesStart>().flatMap((ListenForMessagesStart action) {
      return Stream<void>.value(null)
          .flatMap((_) => chatApi.listenMessages())
          .map((List<Message> messages) => ListenForMessages.event(messages))
          .takeUntil(actions.whereType<ListenForMessagesDone>())
          .onErrorReturnWith((Object error, StackTrace stackTrace) => ListenForMessages.error(error, stackTrace));
    });
  }

}