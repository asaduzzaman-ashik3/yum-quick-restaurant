import 'package:flutter/material.dart';
import '../navigation/end_drawer.dart';
import '../navigation/main_appbar.dart';

class FavouriteScreen extends StatelessWidget {
  final String title;
  const FavouriteScreen({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppbar(title: "Favourites"),
      endDrawer: EndDrawer(),
      body: Center(child: Text("Favourites"),),
    );
  }
}