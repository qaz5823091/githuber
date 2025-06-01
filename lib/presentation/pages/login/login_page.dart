import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../auth_gate.dart';
import 'login_provider.dart';

class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  @override
  Widget build(BuildContext context) {
    ref.listen(loginProvider, (_, current) {
      current.when(
        data: (_) {
          Navigator.of(
            context,
          ).pushReplacement(
            MaterialPageRoute<void>(
              builder: (_) => const AuthGate(),
            ),
          );
        },
        error: (error, _) {},
        loading: () {},
      );
    });
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            spacing: 22,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/github-logo.png',
                height: 50,
                color: Theme.of(context).colorScheme.primary,
              ),
              TextButton(
                onPressed: () async {
                  await ref.read(loginProvider.notifier).signIn();
                },
                child: const Wrap(
                  spacing: 10,
                  children: [
                    Icon(Icons.login),
                    Text('Login with Github'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
