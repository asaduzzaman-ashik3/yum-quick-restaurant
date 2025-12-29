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

    // 10 fake products with real images
    final List<Map<String, String>> products = [
      {
        'image':
            'https://images.unsplash.com/photo-1600891964599-f61ba0e24092?auto=format&fit=crop&w=150&q=80',
        'name': 'Chocolate Cake',
        'price': '12.99',
      },
      {
        'image':
            'https://images.unsplash.com/photo-1627308595229-7830a5c91f9f?auto=format&fit=crop&w=150&q=80',
        'name': 'Veg Sandwich',
        'price': '9.50',
      },
      {
        'image':
            'https://images.unsplash.com/photo-1586190848861-99aa4a171e90?auto=format&fit=crop&w=150&q=80',
        'name': 'Fruit Salad',
        'price': '7.25',
      },
      {
        'image':
            'https://images.unsplash.com/photo-1600891964599-f61ba0e24092?auto=format&fit=crop&w=150&q=80',
        'name': 'Pizza Slice',
        'price': '15.00',
      },
      {
        'image':
            'https://images.unsplash.com/photo-1600891964599-f61ba0e24092?auto=format&fit=crop&w=150&q=80',
        'name': 'Cold Drink',
        'price': '3.50',
      },
      {
        'image':
            'https://images.unsplash.com/photo-1600891964599-f61ba0e24092?auto=format&fit=crop&w=150&q=80',
        'name': 'Burger',
        'price': '11.75',
      },
      {
        'image':
            'https://images.unsplash.com/photo-1600891964599-f61ba0e24092?auto=format&fit=crop&w=150&q=80',
        'name': 'Pasta',
        'price': '13.20',
      },
      {
        'image':
            'https://images.unsplash.com/photo-1627308595229-7830a5c91f9f?auto=format&fit=crop&w=150&q=80',
        'name': 'Ice Cream',
        'price': '5.50',
      },
      {
        'image':
            'https://images.unsplash.com/photo-1586190848861-99aa4a171e90?auto=format&fit=crop&w=150&q=80',
        'name': 'Salad Bowl',
        'price': '8.99',
      },
      {
        'image':
            'https://images.unsplash.com/photo-1627308595229-7830a5c91f9f?auto=format&fit=crop&w=150&q=80',
        'name': 'French Fries',
        'price': '4.25',
      },
    ];

    return Scaffold(
      backgroundColor: Color(0xFfF5F5F5),
      appBar: MainAppbar(title: "Home"),
      endDrawer: EndDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Categories Row
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
              const SizedBox(height: 5),
              Divider(thickness: 0.7,color: Color(0xFFFFD8C7,),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Best Seller",style: TextStyle(color: Color(0xFF391713),fontWeight: FontWeight.w600, fontSize: 18),),
                  Row(
                    children: [
                      Text("View All",style: TextStyle(color: Color(0xFfE95322),fontSize: 12),),
                      Icon(Icons.chevron_right,color: Color(0xFfE95322),)
                    ],
                  )
                ],
              ),
              const SizedBox(height: 10),

              SizedBox(
                height: 120,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: products.length,
                  itemBuilder: (context, index) {
                    final product = products[index];
                    return Padding(
                      padding: const EdgeInsets.only(right: 12.0),
                      child: Stack(
                        children: [
                          Container(
                            width: 81,
                            height: 130,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24),
                              image: DecorationImage(
                                image: NetworkImage(product['image']!),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          // Price Tag
                          Positioned(
                            bottom: 10,
                            right: 0,
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                vertical: 2,
                                horizontal: 6,
                              ),
                              decoration: BoxDecoration(
                                color: Color(0xFFE95322),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Text(
                                product['price']!,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
