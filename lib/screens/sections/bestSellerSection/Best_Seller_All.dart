// import 'package:flutter/material.dart';
// import 'package:freelance/utils/constant/constant.dart';
// import '../../../model/widgets/book_widget.dart';
//
// class BestSellerAll extends StatelessWidget {
//   const BestSellerAll({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Best Sellers'),
//         centerTitle: true,
//       ),
//       body: LayoutBuilder(
//         builder: (context, constraints) {
//           int crossAxisCount = constraints.maxWidth < 600 ? 2 : 3;
//
//           double childAspectRatio = crossAxisCount == 2 ? 0.6 : 0.5;
//
//           return GridView.builder(
//             itemCount: 20,
//             physics: const BouncingScrollPhysics(),
//             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//               crossAxisCount: crossAxisCount,
//               childAspectRatio: childAspectRatio,
//             ),
//             itemBuilder: (context, index) {
//               return BookWidget(
//                 bookImage: AppManger.coverBook, // Replace with your `AppManger.coverBook`
//                 bookHeight: constraints.maxWidth /(crossAxisCount*0.8), // Adjust height dynamically
//               );
//             },
//           );
//         },
//       ),
//     );
//   }
// }
