import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubits/reader_cubit/reader_cubit.dart';

class ReaderBottomBar extends StatelessWidget {
  const ReaderBottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  final screenWidth = MediaQuery.of(context).size.width;
  final iconSize = screenWidth * 0.06;
  final paddingSize = screenWidth * 0.04;

  return Container(
    padding: EdgeInsets.symmetric(vertical: paddingSize / 2, horizontal: paddingSize),
    color: const Color(0xFF87CEEB),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(
          icon: Icon(Icons.remove, color: Colors.white, size: iconSize),
          onPressed: () => context.read<ReaderCubit>().decreaseFontSize(),
        ),
        IconButton(
          icon: Icon(Icons.add, color: Colors.white, size: iconSize),
          onPressed: () => context.read<ReaderCubit>().increaseFontSize(),
        ),
        IconButton(
          icon: Icon(Icons.color_lens, color: Colors.white, size: iconSize),
          onPressed: () => context.read<ReaderCubit>().toggleBackgroundColor(),
        ),
      ],
    ),
  );
}
}

