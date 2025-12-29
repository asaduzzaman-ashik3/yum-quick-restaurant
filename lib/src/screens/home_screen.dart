import 'package:flutter/material.dart';
import 'package:yum_quick_restaurent/src/navigation/end_drawer.dart';
import 'package:yum_quick_restaurent/src/navigation/main_appbar.dart';

class HomeScreen extends StatelessWidget {
  final String title;
  const HomeScreen({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppbar(title: "Home"),
        endDrawer: EndDrawer(),
      body: Center(child: Text("Home"),),
    );
  }
}
