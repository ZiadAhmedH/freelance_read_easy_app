import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:freelance/model/models/book_model.dart';
import 'package:freelance/utils/constant/constant.dart';
import '../../screens/BookDetailsScreen/book_details.dart';
import 'CustomText.dart';

class BookWidget extends StatelessWidget {
  final BookModel book;
  final double bookHeight;

  const BookWidget({super.key, required this.book, required this.bookHeight});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return BookDetailScreen(book: book,);
            },
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              width: bookHeight * 0.7,
              height: bookHeight,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: CachedNetworkImageProvider(
                    book.imageUrl ?? AppManger.coverBook,
                  ),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0xFF87CEEB),
                    offset: Offset(0, 2),
                    blurRadius: 6.0,
                  ),
                ],
              ),
            ),
            CustomText(
              text: book.author ?? "Author",
              fontWeight: FontWeight.normal,
              fontSize: 16,
            ),
            SizedBox(
              width: bookHeight * 0.7,
              child: CustomText(
                text: book.description ?? "Known", // Add author's name if needed
                fontWeight: FontWeight.w300,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
