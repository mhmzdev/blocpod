part of 'cubit.dart';

class _BookProvider {
  static Future<List<Book>> fetch({required String genreType}) async {
    try {
      final resp = await ApiService.ins.get(
        '/books/v1/volumes',
        queryParameters: {
          'subject': genreType,
        },
      );

      final raw = resp.data as Map<String, dynamic>?;
      final items = raw?['items'] as List? ?? [];

      return items
          .map(
            (e) => Book.fromJson(e['volumeInfo']),
          )
          .toList();
    } catch (e) {
      throw Exception("Internal Server Error");
    }
  }
}
