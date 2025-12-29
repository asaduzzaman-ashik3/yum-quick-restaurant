import 'package:flutter/material.dart';

import '../navigation/end_drawer.dart';
import '../navigation/main_appbar.dart';

class SupportsScreen extends StatelessWidget {
  const SupportsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppbar(title: "Supports"),
      endDrawer: EndDrawer(),
      body: Center(child: Text("Supports"),),
    );
  }
}
