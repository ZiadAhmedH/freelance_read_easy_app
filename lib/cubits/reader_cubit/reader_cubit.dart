import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'reader_state.dart';

class ReaderCubit extends Cubit<ReaderState> {
  ReaderCubit() : super(const ReaderState());

  static const Color kWhiteColor = Color(0xFFFFFFFF);
  static const Color kCreamColor = Color(0xFFFAF3E0);

  void setFontSize(double size) {
    if (size > 24) {
      size = 24;
    }
    if (size < 12) {
      size = 12;
    }
    emit(state.copyWith(fontSize: size));
  }

  void setBackgroundColor() {
    bool isWhite = state.backgroundColor == kWhiteColor;
    Color color = isWhite ? kCreamColor : kWhiteColor;
      emit(state.copyWith(backgroundColor: color));

  }

  void updateProgress(int page) {
    if (page != state.currentPage) {
      emit(state.copyWith(currentPage: page));
    }
  }
}