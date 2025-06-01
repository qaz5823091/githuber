import 'package:graphql_flutter/graphql_flutter.dart';

abstract class GqlUsercase<T> {
  late final GraphQLClient client;

  Future<T> execute();
}
