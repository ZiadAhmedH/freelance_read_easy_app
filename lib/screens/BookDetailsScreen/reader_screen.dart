import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../cubits/reader_cubit/reader_cubit.dart';
import '../../model/widgets/reader_app_bar.dart';
import '../../model/widgets/reader_bottom_bar.dart';

class ReaderScreen extends StatelessWidget {

  const ReaderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReaderCubit, ReaderState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: state.backgroundColor,
          appBar: const ReaderAppBar(),
          body: SafeArea(
            child: LayoutBuilder(
              builder: (context, constraints) {
                return SingleChildScrollView(
                  padding: EdgeInsets.symmetric(
                    horizontal: constraints.maxWidth * 0.05,
                    vertical: constraints.maxHeight * 0.02,
                  ),
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. sdvbsvsdsdvsdvdssdvsdvdbkvkbsdkvksdhvksdvjksdvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvSed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. sdvbsvsdsdvsdvdssdvsdvdbkvkbsdkvksdhvksdvjksd',
                    style: GoogleFonts.geo(
                      fontSize: state.fontSize * (constraints.maxWidth / 400),
                      color: const Color(0xFF2E2E2E),
                      height: 1.5,
                    ),
                  ),
                );
              },
            ),
          ),
          bottomNavigationBar: const ReaderBottomBar(),
        );
      },
    );
  }
}

