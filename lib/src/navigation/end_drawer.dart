import 'package:flutter/material.dart';

class EndDrawer extends StatelessWidget {
  const EndDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> drawerNavigation = const [
      {
        'icon': Icons.cookie_outlined,
        'text': 'We have added a product you might like',
      },
      {
        'icon': Icons.favorite_border,
        'text': 'One of your favorites is on promotion.',
      },
      {
        'icon': Icons.shopping_bag_outlined,
        'text': 'Your order has been delivered',
      },
      {
        'icon': Icons.delivery_dining_outlined,
        'text': 'The delivery is on its way',
      },
    ];

    return Drawer(
      backgroundColor: const Color(0xFFE95322),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(70),bottomLeft: Radius.circular(70)),
      ),
      width: MediaQuery.of(context).size.width * 0.85,
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Color(0xFFE95322)),
            child: Align(
              alignment: Alignment.center,
              child: Row(
                spacing: 16,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.notifications, color: Colors.white, size: 45),
                  Text(
                    "Notifications",
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),

          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: drawerNavigation.length,
            itemBuilder: (context, index) {
              final item = drawerNavigation[index];
              return Column(
                children: [
                  ListTile(
                    leading: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Icon(
                        item['icon'],
                        color: const Color(0xFFE95322),
                      ),
                    ),
                    title: Text(
                      item['text'],
                      style: const TextStyle(color: Colors.white),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  const Divider(color: Colors.white70),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
