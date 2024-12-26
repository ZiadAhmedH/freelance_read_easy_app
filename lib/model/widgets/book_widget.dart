import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:freelance/model/models/book_model.dart';
import 'package:freelance/utils/constant/constant.dart';
import '../../screens/BookDetailsScreen/book_details.dart';
import '../../utils/constant/Colors.dart';
import 'CustomText.dart';

class BookWidget extends StatelessWidget {
  final Book book;
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
              return BookDetailScreen(book: book);
            },
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Stack(
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
                Positioned(
                  top: 8,
                  right: 8,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: AppColors.skyBlue,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 16,
                        ),
                        const SizedBox(width: 4),
                        CustomText(
                          text: '${book.rating}',
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            CustomText(
              text: book.author ?? "Author",
              fontWeight: FontWeight.normal,
              fontSize: 16,
            ),
            SizedBox(
              width: bookHeight * 0.7,
              child: CustomText(
                text: book.description ?? "Known",
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