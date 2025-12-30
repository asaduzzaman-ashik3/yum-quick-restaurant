import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../navigation/end_drawer.dart';
import '../navigation/main_appbar.dart';

class FoodsScreen extends StatelessWidget {
  const FoodsScreen({super.key});

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
      appBar: MainAppbar(title: "Foods"),
      endDrawer: EndDrawer(),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.only(bottom: 80),
          child: Column(
            children: [
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
              Divider(thickness: 0.7, color: Color(0xFFFFD8C7)),
            ],
          ),
        ),
      ),
    );
  }
}