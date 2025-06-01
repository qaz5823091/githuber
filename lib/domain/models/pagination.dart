class Pagination<T> {
  Pagination({
    required this.data,
    required this.hasNext,
    required this.cursor,
  });

  final T data;
  final bool hasNext;
  final String? cursor;
}
