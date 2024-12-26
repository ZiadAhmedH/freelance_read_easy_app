import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubits/reader_cubit/reader_cubit.dart';
import '../../cubits/reader_cubit/reader_state.dart';

class ReaderPage extends StatelessWidget {
  const ReaderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReaderCubit, ReaderState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: state.backgroundColor,
          body: SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const BackButton(),
                      Row(
                        children: [
                          IconButton(
                            icon: const Icon(Icons.bookmark_border),
                            onPressed: () {
                              // Bookmark action code here
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                // Book Title
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Text(
                        'Роберт Джордан',
                        style: TextStyle(
                          fontSize: state.fontSize + 4,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Колесо времени. Книга 1. Око мира',
                        style: TextStyle(
                          fontSize: state.fontSize + 2,
                        ),
                      ),
                    ],
                  ),
                ),
                // Content
                Expanded(
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      // Your long text content here
                      "",
                      style: TextStyle(
                        fontSize: state.fontSize,
                        height: 1.5,
                      ),
                    ),
                  ),
                ),
                // Progress Bar
              ],
            ),
          ),
          bottomNavigationBar: BottomAppBar(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                   // add for incrementing the font size + chnage background color
                  IconButton(
                    icon: const Icon(Icons.add),
                    onPressed: () {
                      context.read<ReaderCubit>().setFontSize(state.fontSize + 2);
                    },),
                  IconButton(
                    icon: const Icon(Icons.remove),
                    onPressed: () {
                      context.read<ReaderCubit>().setFontSize(state.fontSize - 2);
                    },
                  ),
                  const Spacer(),
                  IconButton(
                    icon: const Icon(Icons.brightness_6),
                    onPressed: () {
                      context.read<ReaderCubit>().setBackgroundColor();
                    },
                  ),

                ],
              ),
            ),
          ),
        );
      },
    );
  }
}