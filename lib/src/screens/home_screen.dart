import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yum_quick_restaurent/src/navigation/end_drawer.dart';
import 'package:yum_quick_restaurent/src/navigation/main_appbar.dart';

class HomeScreen extends StatelessWidget {
  final String title;

  const HomeScreen({super.key, required this.title});

  @override
  Widget build(BuildContext context) {


    final List<String> images = [
      'https://i.ibb.co.com/bMJtwD13/7967079.jpg',
      'https://i.ibb.co.com/G3kNYNrv/7783920.jpg',
      'https://i.ibb.co.com/N2XxTdZP/Food-Facebook-Banner-05.jpg',
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

    // Recommended food items
    final List<Map<String, String>> recommendedFoods = [
      {
        'image': 'https://images.unsplash.com/photo-1546069901-ba9599a7e63c?auto=format&fit=crop&w=500&q=80',
        'rating': '4.8',
        'price': '12.99',
      },
      {
        'image': 'https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?auto=format&fit=crop&w=500&q=80',
        'rating': '4.5',
        'price': '15.50',
      },
      {
        'image': 'https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?auto=format&fit=crop&w=500&q=80',
        'rating': '4.7',
        'price': '11.25',
      },
      {
        'image': 'https://images.unsplash.com/photo-1546069901-ba9599a7e63c?auto=format&fit=crop&w=500&q=80',
        'rating': '4.9',
        'price': '18.75',
      },
      {
        'image': 'https://images.unsplash.com/photo-1546069901-ba9599a7e63c?auto=format&fit=crop&w=500&q=80',
        'rating': '4.6',
        'price': '9.99',
      },
      {
        'image': 'https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?auto=format&fit=crop&w=500&q=80',
        'rating': '4.4',
        'price': '14.20',
      },
    ];

    return Scaffold(
      backgroundColor: Color(0xFfF5F5F5),
      appBar: MainAppbar(title: "Home"),
      endDrawer: EndDrawer(),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.only(bottom: 80),
          child: Column(
            spacing: 8,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Best Seller",
                    style: TextStyle(
                      color: Color(0xFF391713),
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "View All",
                        style: TextStyle(
                          color: Color(0xFfE95322),
                          fontSize: 12,
                        ),
                      ),
                      Icon(Icons.chevron_right, color: Color(0xFfE95322)),
                    ],
                  ),
                ],
              ),
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
              SizedBox(height: 5),
              CarouselSlider(
                items: images.map((img) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.network(
                      img,
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  );
                }).toList(),
                options: CarouselOptions(
                  height: 130,
                  autoPlay: true,
                  enlargeCenterPage: true,
                  viewportFraction: 1,
                ),
              ),
              SizedBox(height: 3),
              Text(
                "Recommend",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 3),
              // Recommended food cards
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildRecommendedFoodCard(
                    image:
                        'https://images.unsplash.com/photo-1546069901-ba9599a7e63c?auto=format&fit=crop&w=500&q=80',
                    rating: '4.8',
                    price: '12.99',
                  ),
                  SizedBox(width: 10),
                  _buildRecommendedFoodCard(
                    image:
                        'https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?auto=format&fit=crop&w=500&q=80',
                    rating: '4.5',
                    price: '15.50',
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildRecommendedFoodCard(
                    image:
                        'https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?auto=format&fit=crop&w=500&q=80',
                    rating: '4.8',
                    price: '12.99',
                  ),
                  SizedBox(width: 10),
                  _buildRecommendedFoodCard(
                    image:
                        'https://images.unsplash.com/photo-1546069901-ba9599a7e63c?auto=format&fit=crop&w=500&q=80',
                    rating: '4.5',
                    price: '15.50',
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildRecommendedFoodCard(
                    image:
                        'https://images.unsplash.com/photo-1546069901-ba9599a7e63c?auto=format&fit=crop&w=500&q=80',
                    rating: '4.8',
                    price: '12.99',
                  ),
                  SizedBox(width: 10),
                  _buildRecommendedFoodCard(
                    image:
                        'https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?auto=format&fit=crop&w=500&q=80',
                    rating: '4.5',
                    price: '15.50',
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildRecommendedFoodCard(
                    image:
                    'https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?auto=format&fit=crop&w=500&q=80',
                    rating: '4.8',
                    price: '12.99',
                  ),
                  SizedBox(width: 10),
                  _buildRecommendedFoodCard(
                    image:
                    'https://images.unsplash.com/photo-1546069901-ba9599a7e63c?auto=format&fit=crop&w=500&q=80',
                    rating: '4.5',
                    price: '15.50',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  static Widget _buildRecommendedFoodCard({
    required String image,
    required String rating,
    required String price,
  }) {
    return Expanded(
      child: Container(
        height: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          image: DecorationImage(image: NetworkImage(image), fit: BoxFit.cover),
        ),
        child: Stack(
          children: [
            // Rating at top left
            Positioned(
              top: 8,
              left: 8,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.star, color: Colors.amber, size: 14),
                    SizedBox(width: 2),
                    Text(
                      rating,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Price at bottom right
            Positioned(
              bottom: 8,
              right: 8,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: Color(0xFFE95322),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  '\$$price',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
