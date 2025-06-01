import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'token_util.g.dart';

@riverpod
class TokenUtil extends _$TokenUtil {
  static const _tokenKey = 'auth_token';
  static const _storage = FlutterSecureStorage();

  @override
  String? build() {
    return null;
  }

  Future<void> save(String? token) async {
    await _storage.write(key: _tokenKey, value: token);
    state = token;
  }

  Future<void> load() async {
    state = await _storage.read(key: _tokenKey);
  }

  Future<void> clear() async {
    await _storage.delete(key: _tokenKey);
    state = null;
  }
}
