import 'package:flutter/material.dart';
import '../navigation/end_drawer.dart';
import '../navigation/main_appbar.dart';

class FoodsScreen extends StatelessWidget {
  const FoodsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppbar(title: "Foods"),
      endDrawer: EndDrawer(),
      body: Center(child: Text("Foods"),),
    );
  }
}