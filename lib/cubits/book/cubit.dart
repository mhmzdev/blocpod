import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:bloced_archi/models/book.dart';

part 'data_provider.dart';
part 'repository.dart';
part 'state.dart';

class BookCubit extends Cubit<BookState> {
  static BookCubit cubit(BuildContext context, [bool listen = false]) =>
      BlocProvider.of<BookCubit>(context, listen: listen);

  BookCubit() : super(BookDefault());

  final repo = _BookRepository();

  Future<void> fetch() async {
    emit(const BookFetchLoading());
    try {
      final data = await repo.fetch();

      emit(BookFetchSuccess(data: data));
    } catch (e) {
      emit(BookFetchFailed(message: e.toString()));
    }
  }
}
// end-cubit
