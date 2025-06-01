import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../core/util/token_util.dart';

part 'gql_client.g.dart';

@riverpod
GraphQLClient gqlClient(Ref ref) {
  final HttpLink httpLink = HttpLink('https://api.github.com/graphql');
  final AuthLink authLink = AuthLink(
    getToken: () {
      final token = ref.watch(tokenUtilProvider);
      if (token == null) {
        throw Exception('Invalid Token');
      } else {
        return 'Bearer $token';
      }
    },
  );
  final Link link = authLink.concat(httpLink);
  return GraphQLClient(
    link: link,
    cache: GraphQLCache(store: InMemoryStore()),
  );
}
