import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../core/util/token_util.dart';

part 'splash_provider.g.dart';

@riverpod
Future<void> splash(Ref ref) async {
  await ref.watch(tokenUtilProvider.notifier).load();
  await Future<void>.delayed(const Duration(seconds: 1));
}
