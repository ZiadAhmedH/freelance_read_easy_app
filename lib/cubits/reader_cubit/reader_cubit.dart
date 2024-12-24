import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'reader_state.dart';

class ReaderCubit extends Cubit<ReaderState> {
  ReaderCubit() : super(const ReaderState());

  void toggleBackgroundColor() {
    emit(state.copyWith(
      backgroundColor: state.backgroundColor == const Color(0xFFFFFFFF) 
          ? const Color(0xFFFAF3E0) 
          : const Color(0xFFFFFFFF),
    ));
  }

  void increaseFontSize() {
    if (state.fontSize < state.maxFontSize) {
      emit(state.copyWith(fontSize: (state.fontSize + 2).clamp(state.minFontSize, state.maxFontSize)));
    }
  }

  void decreaseFontSize() {
    if (state.fontSize > state.minFontSize) {
      emit(state.copyWith(fontSize: (state.fontSize - 2).clamp(state.minFontSize, state.maxFontSize)));
    }
  }

  void updateFontSizeRange(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final minFontSize = (screenWidth * 0.03).clamp(12.0, 18.0);
    final maxFontSize = (screenWidth * 0.06).clamp(18.0, 32.0);
    
    emit(state.copyWith(
      minFontSize: minFontSize,
      maxFontSize: maxFontSize,
      fontSize: state.fontSize.clamp(minFontSize, maxFontSize),
    ));
  }
}

