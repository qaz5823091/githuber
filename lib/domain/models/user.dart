import 'simple_user.dart';

class User {
  User({
    required this.login,
    required this.avatarUrl,
    required this.bio,
    required this.followersCount,
    required this.followingCount,
    required this.contributions,
    required this.starRepos,
    required this.followers,
    required this.following,
  });

  final String login;
  final String avatarUrl;
  final String bio;
  final String followersCount;
  final String followingCount;
  final Map<DateTime, int> contributions;
  final List<String> starRepos;
  final List<SimpleUser> followers;
  final List<SimpleUser> following;
}
