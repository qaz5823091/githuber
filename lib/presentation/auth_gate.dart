import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../core/util/token_util.dart';
import 'pages/home/home_page.dart';
import 'pages/login/login_page.dart';

class AuthGate extends ConsumerWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Consumer(
      builder: (context, ref, child) {
        final token = ref.watch(tokenUtilProvider);
        if (token != null && token.isNotEmpty) {
          return const HomePage();
        } else {
          return StreamBuilder<User?>(
            stream: FirebaseAuth.instance.authStateChanges(),
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return const LoginPage();
              } else {
                return const HomePage();
              }
            },
          );
        }
      },
    );
  }
}
