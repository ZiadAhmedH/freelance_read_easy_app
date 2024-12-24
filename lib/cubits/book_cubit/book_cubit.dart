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
      List<dynamic> jsonList = json.decode(AppManger.jsonData);
      List<BookModel> books = jsonList.map((json) => BookModel.fromJson(json)).toList();

      emit(BookLoaded(books));
    } catch (e) {
      emit(BookError(e.toString()));
    }
  }

}
