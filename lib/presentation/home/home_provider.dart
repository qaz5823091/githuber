import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/generated/get_viewr_login.graphql.dart';
import '../../data/repositories/gql_client.dart';

part 'home_provider.g.dart';

@riverpod
Future<String> home(Ref ref) async {
  final client = ref.watch(gqlClientProvider);
  final result = await client.query$GetViewerLogin(
    Options$Query$GetViewerLogin(
      fetchPolicy: FetchPolicy.cacheAndNetwork,
      errorPolicy: ErrorPolicy.all,
    ),
  );
  if (result.exception != null) {
    await FirebaseAuth.instance.signOut();
    throw Exception('fetch error');
  }
  final data = result.parsedData?.viewer;
  if (data == null) {
    throw Exception('parse error');
  }
  return data.login;
}
