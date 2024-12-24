import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freelance/cubits/reader_cubit/reader_cubit.dart';
import 'package:freelance/model/models/book_model.dart';
import 'package:freelance/model/widgets/CustomText.dart';
import 'package:freelance/screens/BookDetailsScreen/reader_screen.dart';
import 'package:freelance/utils/constant/constant.dart';

class BookDetailScreen extends StatelessWidget {
  final BookModel book;
  const BookDetailScreen({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 400,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: CachedNetworkImage(imageUrl: book.imageUrl ?? AppManger.coverBook, fit: BoxFit.cover,placeholder: (context, url) {
                return const Center(child: CircularProgressIndicator());
              },),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   CustomText(text:book.title ?? "Title",
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                  const SizedBox(height: 8),
                  CustomText(
                    text: 'by ${book.author ?? "Author"}',
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    book.description ?? "Description",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[600],
                    ),
                  ),
                  const SizedBox(height: 24),
                  const Text(
                    'Overview',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'He searches out eight leading climate thinkers from collapse-psychologist Jamey Hecht to grassroots strategist adrienne maree brown, eco-philosopher Joanna Macy, and indigenous botanist Robin Wall Kimmerer — asking them: "Is this the end of the world? and if so, now what?"\n\nWith gallows humor and a broken heart, Boyd steers readers through their climate angst as he walks his own rocky path from activism to acceptance to gallows humor...',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[800],
                      height: 1.5,
                    ),
                  ),
                  const SizedBox(height: 24),
                   // create a cool button with sky blue color
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                         return BlocProvider(
  create: (context) => ReaderCubit(),
  child: ReaderScreen(),
);
                      },));
                    },
                    style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFF87CEEB),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 32,
                        vertical: 16,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const CustomText(
                          text: 'Read Now',
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}