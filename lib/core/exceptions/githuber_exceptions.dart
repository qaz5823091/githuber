import 'package:freezed_annotation/freezed_annotation.dart';

part 'githuber_exceptions.freezed.dart';

@freezed
sealed class GithuberExceptions with _$GithuberExceptions implements Exception {
  /// Fetch Error
  const factory GithuberExceptions.fetch() = FetchException;

  /// Pasre Error
  const factory GithuberExceptions.parse() = ParseException;
}
