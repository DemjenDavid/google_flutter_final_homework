import 'package:final_homework/models/index.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

class ChatContainer extends StatelessWidget {
  const ChatContainer({
    super.key,
    required this.builder,
  });

  final ViewModelBuilder<List<Message>?> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, List<Message>?>(
      converter: (Store<AppState> store) {
        return store.state.messages.messages;
      },
      builder: builder,
    );
  }
}
