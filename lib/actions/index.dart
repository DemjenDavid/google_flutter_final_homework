library actions;

import 'package:final_homework/models/index.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login.dart';
part 'index.freezed.dart';
part 'logout.dart';
part 'create_user.dart';

typedef ActionResponse = void Function(dynamic action);
