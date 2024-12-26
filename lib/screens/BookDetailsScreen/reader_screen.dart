import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freelance/screens/BookDetailsScreen/reader_settings.dart';

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
                // App Bar
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const BackButton(),
                      Row(
                        children: [
                          IconButton(
                            icon: const Icon(Icons.headphones_outlined),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: const Icon(Icons.menu),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: const Icon(Icons.settings),
                            onPressed: () {
                              showModalBottomSheet(
                                context: context,
                                builder: (context) =>
                                    BlocProvider(
                                      create: (context) => ReaderCubit(),
                                      child: ReaderSettings(),
                                    ),
                              );
                            },
                          ),
                          IconButton(
                            icon: const Icon(Icons.bookmark_border),
                            onPressed: () {},
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
                      'Ранее\n\nВороны\n\nЗдесь, вдали от Эмондова Луга, на берегу Винной реки, тропы к Морскому лесу берега Винной...',
                      style: TextStyle(
                        fontSize: state.fontSize,
                        height: 1.5,
                      ),
                    ),
                  ),
                ),

                // Progress Bar
                Container(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      LinearProgressIndicator(
                        value: state.currentPage / state.totalPages,
                        backgroundColor: Colors.grey[200],
                        valueColor: AlwaysStoppedAnimation<Color>(
                          Theme
                              .of(context)
                              .primaryColor,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        '${state.currentPage} стр из ${state.totalPages}',
                        style: const TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void _showSettingsModal(BuildContext context) {

  }
}