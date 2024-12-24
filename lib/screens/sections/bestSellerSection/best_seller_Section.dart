import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freelance/cubits/book_cubit/book_cubit.dart';
import 'package:freelance/utils/constant/constant.dart';
import '../../../model/widgets/book_widget.dart';

class BestSellerSection extends StatelessWidget {
  const BestSellerSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final bookHeight = constraints.maxHeight * 0.8;
        return SizedBox(
          height: constraints.maxHeight,
          child:
          BlocBuilder<BookCubit, BookState>(
        builder: (context, state) {
          if (state is BookLoaded) {
            return ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 8,
              itemBuilder: (context, index) {
                return BookWidget(
                  book: state.books[index],
                  bookHeight: bookHeight,
                );
              },
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
        ),
        );
      },
    );
  }
}
