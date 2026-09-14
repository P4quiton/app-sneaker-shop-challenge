import 'package:flutter/material.dart';

class MyBottomNav extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onTabChange;

  const MyBottomNav({
    super.key,
    required this.selectedIndex,
    required this.onTabChange,
  });

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      selectedIndex: selectedIndex,
      onDestinationSelected: onTabChange,
      destinations: const [
        NavigationDestination(
          icon: Icon(Icons.storefront),
          label: 'Tienda',
        ),
        NavigationDestination(
          icon: Icon(Icons.shopping_cart),
          label: 'Carrito',
        ),
      ],
    );
  }
}