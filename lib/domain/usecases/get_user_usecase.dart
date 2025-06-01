import 'package:graphql_flutter/graphql_flutter.dart';

import '../../core/exceptions/githuber_exceptions.dart';
import '../../data/generated/get_user_overview.graphql.dart';
import '../models/simple_user.dart';
import '../models/user.dart';
import 'gql_usercase.dart';

class GetUserUsecase implements GqlUsercase<User> {
  GetUserUsecase({
    required this.name,
  });

  @override
  late GraphQLClient client;

  final String name;

  @override
  Future<User> execute() async {
    final result = await client.query$GetUserOverView(
      Options$Query$GetUserOverView(
        variables: Variables$Query$GetUserOverView(user: name),
        fetchPolicy: FetchPolicy.cacheAndNetwork,
        errorPolicy: ErrorPolicy.all,
      ),
    );
    if (result.exception != null) {
      throw const FetchException();
    }
    final data = result.parsedData?.user;
    if (data == null) {
      throw const ParseException();
    }
    return User(
      login: data.login,
      avatarUrl: data.avatarUrl,
      bio: data.bio ?? '',
      followersCount: data.followers.totalCount.toString(),
      followingCount: data.following.totalCount.toString(),
      contributions: data.contributionsCollection.contributionCalendar.weeks
          .expand((week) => week.contributionDays)
          .fold<Map<DateTime, int>>({}, (map, day) {
            if (day.contributionCount != 0) {
              map[DateTime.parse(day.date)] = day.contributionCount;
            }
            return map;
          }),
      starRepos:
          data.starredRepositories.nodes
              ?.map((repo) => repo?.openGraphImageUrl ?? '')
              .toList() ??
          [],
      followers:
          data.followers.nodes
              ?.map(
                (user) => SimpleUser(
                  name: user?.login ?? 'unknown',
                  avatarUrl: user?.avatarUrl ?? '',
                ),
              )
              .toList() ??
          [],
      following:
          data.following.nodes
              ?.map(
                (user) => SimpleUser(
                  name: user?.login ?? 'unknown',
                  avatarUrl: user?.avatarUrl ?? '',
                ),
              )
              .toList() ??
          [],
    );
  }
}
