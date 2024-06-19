import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

GNav bottomNavigation(int selected) => GNav(
  gap: 8,
  activeColor: Colors.white,
  iconSize: 24,
  selectedIndex: selected,
  tabBackgroundColor: Colors.purple.withOpacity(0.1),
  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
  tabs: const [
    GButton(
      backgroundColor: Colors.black87,
      icon: LineIcons.home,
      text: 'Home',
    ),
    GButton(
      backgroundColor: Colors.black87,
      icon: Icons.fastfood,
      text: 'Food',
    ),
    GButton(
      backgroundColor: Colors.black87,
      icon: LineIcons.search,
      text: 'Search',
    ),
    GButton(
      backgroundColor: Colors.black87,
      icon: LineIcons.user,
      text: 'Profile',
    )
  ],
);
