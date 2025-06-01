import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../domain/models/user.dart';
import '../../components/user_card.dart';
import 'home_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: Consumer(
          builder: (context, ref, child) {
            final state = ref.watch(homeProvider);
            return state.when(
              data: (user) => _buildUserCard(user),
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
}
