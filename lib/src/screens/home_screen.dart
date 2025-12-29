import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yum_quick_restaurent/src/navigation/end_drawer.dart';
import 'package:yum_quick_restaurent/src/navigation/main_appbar.dart';

class HomeScreen extends StatelessWidget {
  final String title;
  const HomeScreen({super.key, required this.title});

  @override
  Widget build(BuildContext context) {

    final List<Map<String, String>> categories = [
      {'icon': 'assets/icons/snacks.svg', 'label': 'Snacks'},
      {'icon': 'assets/icons/meals.svg', 'label': 'Meal'},
      {'icon': 'assets/icons/vegan.svg', 'label': 'Vegan'},
      {'icon': 'assets/icons/desserts.svg', 'label': 'Desserts'},
      {'icon': 'assets/icons/drinks.svg', 'label': 'Drinks'},
    ];


    return Scaffold(
      appBar: MainAppbar(title: "Home"),
        endDrawer: EndDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Categories",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            // Full width row with space between
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: categories.map((category) {
                return Column(
                  children: [
                    Container(
                      width: 50,
                      height: 60,
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: const Color(0xFFF3E9B5),
                      ),
                      child: SvgPicture.asset(category['icon']!),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      category['label']!,
                      style: const TextStyle(fontSize: 12),
                    ),
                  ],
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
