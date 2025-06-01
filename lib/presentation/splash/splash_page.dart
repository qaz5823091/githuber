import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../auth_page.dart';
import 'splash_provider.dart';

class SplashPage extends ConsumerStatefulWidget {
  const SplashPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SplashPageState();
}

class _SplashPageState extends ConsumerState<SplashPage> {
  @override
  Widget build(BuildContext context) {
    ref.listen(splashProvider, (_, current) {
      current.whenData((_) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute<void>(builder: (_) => const AuthPage()),
        );
      });
    });
    return Scaffold(
      body: Center(
        child: Consumer(
          builder: (context, ref, child) {
            final state = ref.watch(splashProvider);
            return state.when(
              data: (_) {
                return const SizedBox.shrink();
              },
              error: (error, _) {
                return const SizedBox.shrink();
              },
              loading: () => _buildLoading(),
            );
          },
        ),
      ),
    );
  }

  Widget _buildLoading() {
    return Column(
      spacing: 12,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/github-logo.png', height: 50),
        const CircularProgressIndicator(),
      ],
    );
  }
}
