import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freelance/cubits/book_cubit/book_cubit.dart';
import 'package:freelance/utils/constant/constant.dart';
import '../../../model/widgets/book_widget.dart';

class BestSellerAll extends StatelessWidget {
  const BestSellerAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Best Sellers'),
        centerTitle: true,
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          int crossAxisCount = constraints.maxWidth < 600 ? 2 : 3;

          double childAspectRatio = crossAxisCount == 2 ? 0.6 : 0.5;

          return BlocBuilder<BookCubit, BookState>(
            builder: (context, state) {
              return GridView.builder(
                itemCount:  10,
                physics: const BouncingScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: crossAxisCount,
                  childAspectRatio: childAspectRatio,
                ),
                itemBuilder: (context, index) {
                  if (state is BookLoaded) {
                    return BookWidget(
                      book: state.books[index],
                      bookHeight: constraints.maxWidth /
                          (crossAxisCount * 0.8),
                    );
                  } else {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                },
              );
            },
          );
        },
      ),
    );
  }
}
