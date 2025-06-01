import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../core/token_util.dart';
import 'home/home_page.dart';
import 'login/login_page.dart';

class MiddlePage extends ConsumerStatefulWidget {
  const MiddlePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MiddlePageState();
}

class _MiddlePageState extends ConsumerState<MiddlePage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _init();
    });
  }

  void _init() {
    final user = ref.watch(tokenUtilProvider);
    if (user != null) {
      Navigator.of(
        context,
      ).pushReplacement(
        MaterialPageRoute<void>(builder: (_) => const HomePage()),
      );
    } else {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute<void>(builder: (_) => const LoginPage()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
