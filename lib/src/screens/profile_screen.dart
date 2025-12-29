import 'package:flutter/material.dart';

import '../navigation/end_drawer.dart';
import '../navigation/main_appbar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppbar(title: "Profile"),
      endDrawer: EndDrawer(),
      body: Center(child: Text("Profile"),),
    );
  }
}