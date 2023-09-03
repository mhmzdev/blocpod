part of 'cubit.dart';

@immutable
class BookState extends Equatable {
  final Book? data;
  final String? message;

  const BookState({
    this.data,
    this.message,
  });

  @override
  List<Object?> get props => [data, message];
}

@immutable
class BookDefault extends BookState {}

@immutable
class BookFetchLoading extends BookState {
  const BookFetchLoading();
}

@immutable
class BookFetchSuccess extends BookState {
  const BookFetchSuccess({required Book data}) : super(data: data);
}

@immutable
class BookFetchFailed extends BookState {
  const BookFetchFailed({String? message}) : super(message: message);
}
