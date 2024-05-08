import 'package:fashionshop/Pages/Dashboard/dashboard.dart';
import 'package:fashionshop/Utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:responsive_navigation_bar/responsive_navigation_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  List<Widget> _page = [
    DashBoardPage(),
    DashBoardPage(),
    DashBoardPage(),
    DashBoardPage(),
    DashBoardPage(),
  ];

  void changeTab(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: _page[_selectedIndex],
      bottomNavigationBar: ResponsiveNavigationBar(
        outerPadding: const EdgeInsets.fromLTRB(8, 0, 8, 5),
        padding: EdgeInsets.all(6),
        backgroundColor: Color.fromARGB(255, 85, 83, 83),
        inactiveIconColor: white,
        activeIconColor: primaryColor,
        selectedIndex: _selectedIndex,
        onTabChange: changeTab,
        // showActiveButtonText: false,
        textStyle: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
        navigationBarButtons: const <NavigationBarButton>[
          NavigationBarButton(
            backgroundColor: backgroundColor,
            icon: Icons.home,
          ),
          NavigationBarButton(
            backgroundColor: backgroundColor,
            icon: Icons.shopping_cart,
          ),
          NavigationBarButton(
            backgroundColor: backgroundColor,
            icon: Icons.favorite,
          ),
          NavigationBarButton(
            backgroundColor: backgroundColor,
            icon: Icons.report,
          ),
          NavigationBarButton(
            backgroundColor: backgroundColor,
            icon: Icons.person,
          ),
        ],
      ),
    );
  }
}
