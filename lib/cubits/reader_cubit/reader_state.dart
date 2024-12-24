part of 'reader_cubit.dart';

class ReaderState extends Equatable {
  final Color backgroundColor;
  final double fontSize;
  final double minFontSize;
  final double maxFontSize;

  const ReaderState({
    this.backgroundColor = const Color(0xFFFAF3E0),
    this.fontSize = 18,
    this.minFontSize = 14,
    this.maxFontSize = 24,
  });

  ReaderState copyWith({
    Color? backgroundColor,
    double? fontSize,
    double? minFontSize,
    double? maxFontSize,
  }) {
    return ReaderState(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      fontSize: fontSize ?? this.fontSize,
      minFontSize: minFontSize ?? this.minFontSize,
      maxFontSize: maxFontSize ?? this.maxFontSize,
    );
  }

  @override
  List<Object> get props => [backgroundColor, fontSize, minFontSize, maxFontSize];
}

