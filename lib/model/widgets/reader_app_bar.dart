import 'package:flutter/material.dart';

class ReaderAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ReaderAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Text(
        'ReadEasy',
        style: TextStyle(
          color: const Color(0xFF2E2E2E),
          fontSize: MediaQuery.of(context).size.width * 0.05,
        ),
      ),
      iconTheme: const IconThemeData(color: Color(0xFF2E2E2E)),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

