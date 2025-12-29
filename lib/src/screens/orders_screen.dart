import 'package:flutter/material.dart';

import '../navigation/end_drawer.dart';
import '../navigation/main_appbar.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppbar(title: "Orders"),
      endDrawer: EndDrawer(),
      body: Center(child: Text("Orders"),),
    );
  }
}
