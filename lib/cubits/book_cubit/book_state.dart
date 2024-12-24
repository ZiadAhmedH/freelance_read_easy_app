part of 'book_cubit.dart';
class BookState extends Equatable {
  const BookState();

  @override
  List<Object> get props => [];
}

class BookInitial extends BookState {}


class BookLoading extends BookState {}


class BookLoaded extends BookState {
  final List<BookModel> books;

  BookLoaded(this.books);

  @override
  List<Object> get props => [books];
}

class BookError extends BookState {
  final String message;

  BookError(this.message);

  @override
  List<Object> get props => [message];
}


