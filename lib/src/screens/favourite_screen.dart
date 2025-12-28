import 'package:flutter/material.dart';

class FavouriteScreen extends StatelessWidget {
  final String title;
  const FavouriteScreen({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF5CB58),
        title: Text(title),
      ),
      body: Center(child: Text("Favourite"),),
    );
  }
}