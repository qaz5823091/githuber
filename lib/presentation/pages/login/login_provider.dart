import 'package:firebase_auth/firebase_auth.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/util/token_util.dart';

part 'login_provider.g.dart';

@riverpod
class Login extends _$Login {
  @override
  Future<void> build() async {
    return;
  }

  Future<void> signIn() async {
    state = const AsyncLoading();
    try {
      final userCredential = await FirebaseAuth.instance.signInWithProvider(
        GithubAuthProvider(),
      );
      final token = userCredential.credential?.accessToken;
      await ref.watch(tokenUtilProvider.notifier).save(token);
      state = const AsyncData(null);
    } catch (error) {
      state = AsyncError(error, StackTrace.current);
    }
  }
}
