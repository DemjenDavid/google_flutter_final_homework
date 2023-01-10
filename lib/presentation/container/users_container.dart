import 'package:final_homework/models/index.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

class UsersContainer extends StatelessWidget {
  const UsersContainer({
    super.key,
    required this.builder,
  });

  final ViewModelBuilder<List<AppUser>?> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, List<AppUser>?>(
      converter: (Store<AppState> store) {
        return store.state.users.users;
      },
      builder: builder,
    );
  }
}
