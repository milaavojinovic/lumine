import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:lumine/screens/cart_screen.dart';
import 'package:lumine/screens/home_screen.dart';
import 'package:lumine/screens/profile_screen.dart';
import 'package:lumine/screens/search_screen.dart';

class RootScreen extends StatefulWidget {
  const RootScreen({super.key});

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  late List<Widget> screens;
  int currentScreen = 0;
  late PageController controller;

  @override
  void initState() {
    super.initState();
    screens = const [
      HomeScreen(),
      SearchScreen(),
      CartScreen(),
      ProfileScreen(),
    ];
    controller = PageController(initialPage: currentScreen);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: controller,
        children: screens,
      ),
      bottomNavigationBar: NavigationBar(
  selectedIndex: currentScreen,
  height: kBottomNavigationBarHeight,
  backgroundColor: Theme.of(context).scaffoldBackgroundColor,
  indicatorColor: Colors.transparent,
  onDestinationSelected: (index) {
    setState(() => currentScreen = index);
    controller.jumpToPage(index);
  },
  destinations: [
    NavigationDestination(
      selectedIcon: Icon(
        IconlyBold.home,
        color: Theme.of(context).colorScheme.onSurface, // ✔ svetla u dark
      ),
      icon: Icon(
        IconlyLight.home,
        color: Theme.of(context).colorScheme.onSurfaceVariant,
      ),
      label: "Home",
    ),
    NavigationDestination(
      selectedIcon: Icon(
        IconlyBold.search,
        color: Theme.of(context).colorScheme.onSurface,
      ),
      icon: Icon(
        IconlyLight.search,
        color: Theme.of(context).colorScheme.onSurfaceVariant,
      ),
      label: "Search",
    ),
    NavigationDestination(
      selectedIcon: Icon(
        IconlyBold.bag2,
        color: Theme.of(context).colorScheme.onSurface,
      ),
      icon: Icon(
        IconlyLight.bag2,
        color: Theme.of(context).colorScheme.onSurfaceVariant,
      ),
      label: "Cart",
    ),
    NavigationDestination(
      selectedIcon: Icon(
        IconlyBold.profile,
        color: Theme.of(context).colorScheme.onSurface,
      ),
      icon: Icon(
        IconlyLight.profile,
        color: Theme.of(context).colorScheme.onSurfaceVariant,
      ),
      label: "Profile",
    ),
  ],
),

    );
  }
}
