import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'reader_state.dart';

class ReaderCubit extends Cubit<ReaderState> {
  ReaderCubit() : super(const ReaderState());

  static const Color kWhiteColor = Color(0xFFFFFFFF);
  static const Color kCreamColor = Color(0xFFFAF3E0);

  void setFontSize(double size) {
    emit(state.copyWith(fontSize: size));
  }

  void setBackgroundColor(Color color) {
    if (color != state.backgroundColor) {
      emit(state.copyWith(backgroundColor: color));
    }
  }

  void updateProgress(int page) {
    if (page != state.currentPage) {
      emit(state.copyWith(currentPage: page));
    }
  }
}