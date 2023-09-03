import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:bloced_archi/models/book.dart';

part 'data_provider.dart';
part 'repository.dart';
part 'state.dart';

class FavoriteCubit extends Cubit<FavoriteState> {
  static FavoriteCubit c(BuildContext context, [bool listen = false]) =>
      BlocProvider.of<FavoriteCubit>(context, listen: listen);
  FavoriteCubit() : super(const FavoriteStateDefault());

  final repo = _FavoriteRepository();

  Future<void> fetch() async {
    emit(state.copyWith(
      get: FavoriteFetchLoading(),
    ));
    try {
      final data = await repo.fetch();
      emit(state.copyWith(
        get: FavoriteFetchSuccess(data: data),
      ));
    } catch (e) {
      emit(state.copyWith(
        get: FavoriteFetchFailed(message: e.toString()),
      ));
    }
  }
}
