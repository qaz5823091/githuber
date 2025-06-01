import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'home_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer(
        builder: (context, ref, child) {
          final home = ref.watch(homeProvider);
          return home.when(
            data: (data) => Text(data),
            error: (error, _) => Text(error.toString()),
            loading: () => const CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
