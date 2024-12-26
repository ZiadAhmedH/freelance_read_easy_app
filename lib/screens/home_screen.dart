import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freelance/cubits/book_cubit/book_cubit.dart';
import 'package:freelance/screens/sections/UPComingSection/Up_Coming_All.dart';
import 'package:freelance/screens/sections/UPComingSection/up_coming_section.dart';
import 'package:freelance/screens/sections/bestSellerSection/Best_Seller_All.dart';
import 'package:freelance/screens/sections/bestSellerSection/best_seller_Section.dart';
import '../model/widgets/CustomText.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const CustomText(
          text: 'ReadEasy',
          fontWeight: FontWeight.bold,
          fontSize: 22,
        ),
        centerTitle: true,
        elevation: 0.3,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                        text: "Recommended for you ",
                        fontWeight: FontWeight.w700,
                        fontSize: 22),
                    CustomText(
                        text: "Handpicked based on yourb  reading preferences.",
                        fontWeight: FontWeight.w400,
                        fontSize: 12),
                  ],
                ),
                const Spacer(),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BlocProvider(
                          create: (context) => BookCubit()..getBooks(),
                          child: BestSellerAll(),
                        ),
                      ),
                    );
                  },
                  child: CustomText(
                      text: "View All",
                      fontWeight: FontWeight.w700,
                      fontSize: 16),
                ),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.35,
            child: BlocProvider(
              create: (context) => BookCubit()..getBooks(),
              child: BestSellerSection(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                CustomText(
                    text: "Upcoming",
                    fontWeight: FontWeight.w700,
                    fontSize: 18),
                const Spacer(),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BlocProvider(
                                  create: (context) => BookCubit()..getBooks(),
                                  child: UpComingAll(),
                                )));
                  },
                  child: CustomText(
                      text: "View All",
                      fontWeight: FontWeight.w700,
                      fontSize: 16),
                ),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.35,
            child: BlocProvider(
              create: (context) => BookCubit()..getBooks(),
              child: UpComingSection(),
            ),
          ),
        ],
      ),
    );
  }
}
