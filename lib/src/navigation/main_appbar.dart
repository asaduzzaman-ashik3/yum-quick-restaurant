import 'package:flutter/material.dart';

class MainAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const MainAppbar({
    super.key,
    required this.title,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFFE95322),
      title: Text(title,style: TextStyle(color: Colors.white),),
      iconTheme: const IconThemeData(
        color: Colors.white,
      ),
    );
  }
}
