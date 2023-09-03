part of 'cubit.dart';

class _BookRepository {
  Future<List<Book>> fetch({String genreType = 'computer'}) =>
      _BookProvider.fetch(genreType: genreType);
}
