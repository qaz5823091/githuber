import 'package:graphql_flutter/graphql_flutter.dart';

import '../../core/exceptions/githuber_exceptions.dart';
import '../../data/generated/get_user_following.graphql.dart';
import '../models/pagination.dart';
import '../models/simple_user.dart';
import 'gql_usercase.dart';

class GetUserFollowingUsecase
    implements GqlUsercase<Pagination<List<SimpleUser>>> {
  GetUserFollowingUsecase({
    required this.loginName,
    this.endCusror,
  });

  @override
  late GraphQLClient client;

  final String loginName;
  final String? endCusror;

  @override
  Future<Pagination<List<SimpleUser>>> execute() async {
    final result = await client.query$GetUserFollowing(
      Options$Query$GetUserFollowing(
        variables: Variables$Query$GetUserFollowing(
          username: loginName,
          after: endCusror,
        ),
        fetchPolicy: FetchPolicy.cacheAndNetwork,
        errorPolicy: ErrorPolicy.all,
      ),
    );
    if (result.exception != null) {
      throw const FetchException();
    }
    final data = result.parsedData?.user?.following;
    if (data == null) {
      throw const ParseException();
    }
    return Pagination<List<SimpleUser>>(
      data:
          data.nodes
              ?.map(
                (user) => SimpleUser(
                  name: user?.login ?? '',
                  avatarUrl: user?.avatarUrl ?? '',
                ),
              )
              .toList() ??
          [],
      hasNext: data.pageInfo.hasNextPage,
      cursor: data.pageInfo.endCursor,
    );
  }
}
