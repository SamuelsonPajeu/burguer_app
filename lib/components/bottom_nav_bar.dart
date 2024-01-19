import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget {
  final void Function(int)? onTabChange;

  const MyBottomNavBar({
    super.key,
    required this.onTabChange,
  });

  @override
  Widget build(BuildContext context) {
    Color primaryColor = Theme.of(context).colorScheme.primary;
    Color secondaryColor = Theme.of(context).colorScheme.secondary;
    Color tertiaryColor = Theme.of(context).colorScheme.tertiary;
    // Color notificationColor = Colors.red;

    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: tertiaryColor,
            width: 2.0,
          ),
        ),
      ),
      child: GNav(
        onTabChange: (value) => onTabChange!(value),
        color: secondaryColor,
        activeColor: primaryColor,
        mainAxisAlignment: MainAxisAlignment.center,
        tabs: const [
          GButton(
            icon: Icons.home,
            text: 'Shop',
          ),
          GButton(
            icon: Icons.shopping_bag_outlined,
            text: 'Cart',
          ),
        ],
      ),
    );
  }
}
