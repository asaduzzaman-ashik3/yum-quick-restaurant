import 'package:flutter/material.dart';
import '../navigation/end_drawer.dart';
import '../navigation/main_appbar.dart';

class FavouriteScreen extends StatelessWidget {
  final String title;
  const FavouriteScreen({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    // Sample data for favourite food items
    final List<Map<String, String>> favouriteFoods = [
      {
        'image': 'https://images.unsplash.com/photo-1546069901-ba9599a7e63c?auto=format&fit=crop&w=500&q=80',
        'name': 'Chocolate Cake',
        'rating': '4.8',
        'price': '12.99',
      },
      {
        'image': 'https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?auto=format&fit=crop&w=500&q=80',
        'name': 'Veg Sandwich',
        'rating': '4.5',
        'price': '9.50',
      },
      {
        'image': 'https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?auto=format&fit=crop&w=500&q=80',
        'name': 'Fruit Salad',
        'rating': '4.7',
        'price': '7.25',
      },
      {
        'image': 'https://images.unsplash.com/photo-1546069901-ba9599a7e63c?auto=format&fit=crop&w=500&q=80',
        'name': 'Pizza Slice',
        'rating': '4.9',
        'price': '15.00',
      },
      {
        'image': 'https://images.unsplash.com/photo-1546069901-ba9599a7e63c?auto=format&fit=crop&w=500&q=80',
        'name': 'Cold Drink',
        'rating': '4.6',
        'price': '3.50',
      },
      {
        'image': 'https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?auto=format&fit=crop&w=500&q=80',
        'name': 'Burger',
        'rating': '4.4',
        'price': '11.75',
      },
    ];

    return Scaffold(
      appBar: MainAppbar(title: "Favourites Food"),
      endDrawer: EndDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              childAspectRatio: 0.7,
            ),
            itemCount: favouriteFoods.length,
            itemBuilder: (context, index) {
              final food = favouriteFoods[index];
              return _buildFavouriteFoodCard(
                image: food['image']!,
                name: food['name']!,
                rating: food['rating']!,
                price: food['price']!,
              );
            },
          ),
        ),
      ),
    );
  }

  static Widget _buildFavouriteFoodCard({
    required String image,
    required String name,
    required String rating,
    required String price,
  }) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: DecorationImage(
          image: NetworkImage(image),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          // Heart icon at top right
          Positioned(
            top: 8,
            right: 8,
            child: Container(
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: Colors.white.withValues(alpha: 0.8),
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.favorite,
                color: Colors.red,
                size: 20,
              ),
            ),
          ),
          Positioned(
            bottom: 8,
            left: 8,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
              decoration: BoxDecoration(
                color: Colors.white.withValues(alpha: 0.8),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.amber,
                    size: 14,
                  ),
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
          // Name at bottom left
          Positioned(
            top: 8,
            left: 8,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.6),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                name,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}