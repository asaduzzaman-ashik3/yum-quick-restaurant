import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../navigation/end_drawer.dart';
import '../navigation/main_appbar.dart';

class FoodsScreen extends StatefulWidget {
  const FoodsScreen({super.key});

  @override
  State<FoodsScreen> createState() => _FoodsScreenState();
}

class _FoodsScreenState extends State<FoodsScreen> {
  String selectedCategory = 'All';

  @override
  Widget build(BuildContext context) {

    final List<Map<String, String>> categories = [
      {'icon': 'assets/icons/snacks.svg', 'label': 'Snacks'},
      {'icon': 'assets/icons/meals.svg', 'label': 'Meal'},
      {'icon': 'assets/icons/vegan.svg', 'label': 'Vegan'},
      {'icon': 'assets/icons/desserts.svg', 'label': 'Desserts'},
      {'icon': 'assets/icons/drinks.svg', 'label': 'Drinks'},
    ];

    // Sample food data
    final List<Map<String, String>> foodItems = [
      {
        'name': 'Chocolate Cake',
        'price': '12.99',
        'image': 'https://images.unsplash.com/photo-1546069901-ba9599a7e63c?auto=format&fit=crop&w=500&q=80',
        'category': 'Desserts',
        'rating': '4.8',
      },
      {
        'name': 'Veg Sandwich',
        'price': '9.50',
        'image': 'https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?auto=format&fit=crop&w=500&q=80',
        'category': 'Snacks',
        'rating': '4.5',
      },
      {
        'name': 'Fruit Salad',
        'price': '7.25',
        'image': 'https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?auto=format&fit=crop&w=500&q=80',
        'category': 'Vegan',
        'rating': '4.7',
      },
      {
        'name': 'Pizza Slice',
        'price': '15.00',
        'image': 'https://images.unsplash.com/photo-1546069901-ba9599a7e63c?auto=format&fit=crop&w=500&q=80',
        'category': 'Meal',
        'rating': '4.9',
      },
      {
        'name': 'Cold Drink',
        'price': '3.50',
        'image': 'https://images.unsplash.com/photo-1546069901-ba9599a7e63c?auto=format&fit=crop&w=500&q=80',
        'category': 'Drinks',
        'rating': '4.6',
      },
      {
        'name': 'Burger',
        'price': '11.75',
        'image': 'https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?auto=format&fit=crop&w=500&q=80',
        'category': 'Meal',
        'rating': '4.4',
      },
      {
        'name': 'Pasta',
        'price': '13.20',
        'image': 'https://images.unsplash.com/photo-1546069901-ba9599a7e63c?auto=format&fit=crop&w=500&q=80',
        'category': 'Meal',
        'rating': '4.7',
      },
      {
        'name': 'Ice Cream',
        'price': '5.50',
        'image': 'https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?auto=format&fit=crop&w=500&q=80',
        'category': 'Desserts',
        'rating': '4.8',
      },
      {
        'name': 'Salad Bowl',
        'price': '8.99',
        'image': 'https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?auto=format&fit=crop&w=500&q=80',
        'category': 'Vegan',
        'rating': '4.6',
      },
      {
        'name': 'French Fries',
        'price': '4.25',
        'image': 'https://images.unsplash.com/photo-1546069901-ba9599a7e63c?auto=format&fit=crop&w=500&q=80',
        'category': 'Snacks',
        'rating': '4.3',
      },
      {
        'name': 'Grilled Chicken',
        'price': '14.99',
        'image': 'https://images.unsplash.com/photo-1606755965493-87e4b7c6ca3c?auto=format&fit=crop&w=500&q=80',
        'category': 'Meal',
        'rating': '4.7',
      },
      {
        'name': 'Smoothie',
        'price': '6.75',
        'image': 'https://images.unsplash.com/photo-1626082927389-6cd097cee6a6?auto=format&fit=crop&w=500&q=80',
        'category': 'Drinks',
        'rating': '4.5',
      },
      {
        'name': 'Tiramisu',
        'price': '8.25',
        'image': 'https://images.unsplash.com/photo-1551024506-0bccd828d307?auto=format&fit=crop&w=500&q=80',
        'category': 'Desserts',
        'rating': '4.9',
      },
      {
        'name': 'Veggie Wrap',
        'price': '7.99',
        'image': 'https://images.unsplash.com/photo-1540189549336-e6e99c3679fe?auto=format&fit=crop&w=500&q=80',
        'category': 'Vegan',
        'rating': '4.4',
      },
      {
        'name': 'Soda',
        'price': '2.50',
        'image': 'https://images.unsplash.com/photo-1615890574404-04b8e0b27a26?auto=format&fit=crop&w=500&q=80',
        'category': 'Drinks',
        'rating': '4.2',
      },
      {
        'name': 'Fish Tacos',
        'price': '12.50',
        'image': 'https://images.unsplash.com/photo-1568901343274-7c5f3b25b7c5?auto=format&fit=crop&w=500&q=80',
        'category': 'Meal',
        'rating': '4.8',
      },
      {
        'name': 'Donut',
        'price': '3.75',
        'image': 'https://images.unsplash.com/photo-1551024506-0bccd828d307?auto=format&fit=crop&w=500&q=80',
        'category': 'Desserts',
        'rating': '4.6',
      },
      {
        'name': 'Quinoa Bowl',
        'price': '9.99',
        'image': 'https://images.unsplash.com/photo-1512621776951-a57141f2eefd?auto=format&fit=crop&w=500&q=80',
        'category': 'Vegan',
        'rating': '4.7',
      },
      {
        'name': 'Coffee',
        'price': '4.50',
        'image': 'https://images.unsplash.com/photo-1495474472287-4d71bcdd2085?auto=format&fit=crop&w=500&q=80',
        'category': 'Drinks',
        'rating': '4.9',
      },
      {
        'name': 'Avocado Toast',
        'price': '8.25',
        'image': 'https://images.unsplash.com/photo-1525351484163-752941434883?auto=format&fit=crop&w=500&q=80',
        'category': 'Snacks',
        'rating': '4.5',
      },
    ];

    return Scaffold(
      appBar: MainAppbar(title: "Foods"),
      endDrawer: EndDrawer(),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              // Category filter row
              SizedBox(height: 10),
              SizedBox(
                height: 60,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length + 1, // +1 for 'All' category
                  itemBuilder: (context, index) {
                    String category = index == 0 ? 'All' : categories[index - 1]['label']!;
                    bool isSelected = selectedCategory == category;
                    
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedCategory = category;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                        margin: EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          color: isSelected ? Color(0xFFE95322) : Color(0xFFF3E9B5),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Text(
                            category,
                            style: TextStyle(
                              color: isSelected ? Colors.white : Color(0xFF391713),
                              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 16),
              // Food items grid
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  childAspectRatio: 0.7,
                ),
                itemCount: selectedCategory == 'All' 
                    ? foodItems.length 
                    : foodItems.where((food) => food['category'] == selectedCategory).length,
                itemBuilder: (context, index) {
                  final List<Map<String, String>> filteredFoods = 
                      selectedCategory == 'All' 
                          ? foodItems 
                          : foodItems.where((food) => food['category'] == selectedCategory).toList();
                  final food = filteredFoods[index];
                  
                  return _buildFoodItemCard(
                    image: food['image']!,
                    name: food['name']!,
                    price: food['price']!,
                    rating: food['rating']!,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  static Widget _buildFoodItemCard({
    required String image,
    required String name,
    required String price,
    required String rating,
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
          // Rating at top left
          Positioned(
            bottom: 8,
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
                  fontSize: 12,
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