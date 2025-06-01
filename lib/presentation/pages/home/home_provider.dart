import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../data/repositories/gql_client.dart';
import '../../../domain/usecases/get_viewer_login_usecase.dart';

part 'home_provider.g.dart';

@riverpod
Future<String> home(Ref ref) async {
  final client = ref.watch(gqlClientProvider);
  final usercase = GetViewerLoginUsecase(client: client);
  return usercase.execute();
}
