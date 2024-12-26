import 'dart:ui';

import 'package:equatable/equatable.dart';

import '../../utils/constant/Colors.dart';

class ReaderState extends Equatable {
  final double fontSize;
  final Color backgroundColor;
  final int currentPage;
  final int totalPages;

  const ReaderState({
    this.fontSize = 16.0,
    this.backgroundColor = AppColors.white,
    this.currentPage = 1,
    this.totalPages = 71,
  });

  ReaderState copyWith({
    double? fontSize,
    Color? backgroundColor,
    int? currentPage,
    int? totalPages,
  }) {
    return ReaderState(
      fontSize: fontSize ?? this.fontSize,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      currentPage: currentPage ?? this.currentPage,
      totalPages: totalPages ?? this.totalPages,
    );
  }

  @override
  List<Object> get props => [fontSize, backgroundColor, currentPage, totalPages];
}