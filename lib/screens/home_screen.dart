import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'dashboard_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: 0);
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: PageView(
          controller: _controller,
          onPageChanged: (v) {},
          children: [
            DashboardScreen(),
            Center(child: Text('Search')),
            Center(child: Text('Bookmark')),
            Center(child: Text('Profile')),
          ],
        ),
      ),
      bottomNavigationBar: DotNavigationBar(
        backgroundColor: Color(0xFF1B1E25),
        enableFloatingNavBar: false,
        currentIndex: _selectedIndex,
        onTap: (v) {
          setState(() {
            _selectedIndex = v;
            _controller.animateToPage(
              v,
              duration: Duration(milliseconds: 200),
              curve: Curves.ease,
            );
          });
        },
        unselectedItemColor: Color(0xFF636882),
        items: [
          DotNavigationBarItem(
            icon: Icon(Icons.dashboard),
          ),
          DotNavigationBarItem(
            icon: Icon(Icons.search),
          ),
          DotNavigationBarItem(
            icon: Icon(Icons.bookmark_outline_outlined),
          ),
          DotNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
          ),
        ],
      ),
    );
  }
}
