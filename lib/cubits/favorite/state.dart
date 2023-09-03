part of 'cubit.dart';

@immutable
class FavoriteFetchState extends Equatable {
  static bool match(FavoriteState a, FavoriteState b) => a.get != b.get;

  final Book? data;
  final String? message;

  const FavoriteFetchState({
    this.data,
    this.message,
  });

  @override
  List<Object?> get props => [
        data,
        message,
      ];
}

@immutable
class FavoriteFetchDefault extends FavoriteFetchState {}

@immutable
class FavoriteFetchLoading extends FavoriteFetchState {}

@immutable
class FavoriteFetchSuccess extends FavoriteFetchState {
  const FavoriteFetchSuccess({required Book data}) : super(data: data);
}

@immutable
class FavoriteFetchFailed extends FavoriteFetchState {
  const FavoriteFetchFailed({String? message}) : super(message: message);
}

// root-state
@immutable
class FavoriteState extends Equatable {
  final FavoriteFetchState get;

  const FavoriteState({
    required this.get,
  });

  @override
  List<Object> get props => [
        // root-state-props
        get,
      ];

  FavoriteState copyWith({
    FavoriteFetchState? get,
  }) {
    return FavoriteState(
      get: get ?? this.get,
    );
  }
}

@immutable
class FavoriteStateDefault extends FavoriteState {
  const FavoriteStateDefault()
      : super(
          // root-state-init
          get: const FavoriteFetchState(),
        );
}
