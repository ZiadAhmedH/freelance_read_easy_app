import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freelance/utils/constant/constant.dart';
import 'package:meta/meta.dart';

import '../../model/models/book_model.dart';

part 'book_state.dart';

class BookCubit extends Cubit<BookState> {
  BookCubit() : super(BookInitial());

  Future<void> getBooks() async {
    emit(BookLoading());
    try {
      // Create BookList object from JSON data
      final bookList = BookList.fromJson(BookData.jsonData);

      // Access the books list from BookList object
      final books = bookList.books;

      emit(BookLoaded(books));
    } catch (e) {
      print('Error loading books: $e');  // Debug print
      emit(BookError(e.toString()));
    }
  }
  }


