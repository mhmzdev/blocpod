part of 'cubit.dart';

class _BookProvider {
  static Future<Book> fetch() async {
    try {
      final Map<String, dynamic> raw = {};
      return Book.fromJson(raw);
    } catch (e) {
      throw Exception("Internal Server Error");
    }
  }
}
