part of 'cubit.dart';

class _FavoriteProvider {
  static Future<Book> fetch() async {
    try {
      final Map<String, dynamic> raw = {};
      return Book.fromJson(raw);
    } catch (e) {
      debugPrint('------ FavoriteProvider ------');
      debugPrint('------ $e ------');
      throw Exception("Internal Server Error");
    }
  }
}
