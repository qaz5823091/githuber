import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'login/login_page.dart';
import 'middle_page.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const LoginPage();
        } else {
          return const MiddlePage();
        }
      },
    );
  }
}
