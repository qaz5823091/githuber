import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../domain/models/user.dart';
import '../../components/contribution_card.dart';
import '../../components/follow_card.dart';
import '../../components/starred_card.dart';
import '../../components/user_card.dart';
import 'home_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: const Text(
          'Githuber',
          style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
        child: Consumer(
          builder: (context, ref, child) {
            final state = ref.watch(homeProvider);
            return state.when(
              data: (user) => SingleChildScrollView(
                child: Column(
                  spacing: 12,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _buildUserCard(user),
                    _buildContributionCard(user),
                    _buildStarredRepos(user),
                    _buildFollowerCard(user),
                    _buildFollowingCard(user),
                  ],
                ),
              ),
              error: (error, _) => Text(error.toString()),
              loading: () => const CircularProgressIndicator(),
            );
          },
        ),
      ),
    );
  }

  Widget _buildUserCard(User user) {
    return UserCard(
      name: user.login,
      bio: user.bio,
      avatarUrl: user.avatarUrl,
      followers: user.followersCount,
      following: user.followingCount,
    );
  }

  Widget _buildContributionCard(User user) {
    return ContributionCard(datasets: user.contributions);
  }

  Widget _buildStarredRepos(User user) {
    return StarredCard(repos: user.starRepos);
  }

  Widget _buildFollowerCard(User user) {
    return FollowCard(
      title: 'Followers',
      users: user.followers,
      onTap: () {},
    );
  }

  Widget _buildFollowingCard(User user) {
    return FollowCard(
      title: 'Following',
      users: user.following,
      onTap: () {},
    );
  }
}
