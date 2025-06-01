import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../data/repositories/gql_client.dart';
import '../../../domain/models/user.dart';
import '../../../domain/usecases/get_user_usecase.dart';
import '../../../domain/usecases/get_viewer_login_usecase.dart';

part 'home_provider.g.dart';

@riverpod
Future<User> home(Ref ref) async {
  final client = ref.watch(gqlClientProvider);
  final nameCase = GetViewerLoginUsecase(client: client);
  final name = await nameCase.execute();
  final userCase = GetUserUsecase(client: client, name: name);
  return userCase.execute();
}
