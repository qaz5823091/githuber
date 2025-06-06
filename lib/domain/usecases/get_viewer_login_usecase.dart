import 'package:graphql_flutter/graphql_flutter.dart';

import '../../core/exceptions/githuber_exceptions.dart';
import '../../data/generated/get_viewr_login.graphql.dart';
import 'gql_usercase.dart';

class GetViewerLoginUsecase implements GqlUsercase<String> {
  GetViewerLoginUsecase({
    required this.client,
  });

  @override
  late GraphQLClient client;

  @override
  Future<String> execute() async {
    final result = await client.query$GetViewerLogin(
      Options$Query$GetViewerLogin(
        fetchPolicy: FetchPolicy.cacheAndNetwork,
        errorPolicy: ErrorPolicy.all,
      ),
    );
    if (result.exception != null) {
      throw const FetchException();
    }
    final data = result.parsedData?.viewer;
    if (data == null) {
      throw const ParseException();
    }
    return data.login;
  }
}
