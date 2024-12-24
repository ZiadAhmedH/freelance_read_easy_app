import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freelance/screens/home_screen.dart';
import 'package:freelance/screens/BookDetailsScreen/reader_screen.dart';
import 'package:page_transition/page_transition.dart';
import '../cubits/reader_cubit/reader_cubit.dart';
import '../model/widgets/animated_logo.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      pageTransitionType: PageTransitionType.fade,
      splash: AnimatedLogo(size: MediaQuery.of(context).size.width * 0.5),
      nextScreen: HomeScreen(),
      splashTransition: SplashTransition.fadeTransition,
      backgroundColor: const Color(0xFFFAF3E0),
      duration: 3000, // 3 seconds
    );
  }
}
