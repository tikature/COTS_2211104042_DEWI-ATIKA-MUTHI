import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../design_system/colors.dart';
import '../../../design_system/typography.dart';
import '../../../modules/board_page/view/home_page.dart';
import 'promo_page.dart';
import 'order_page.dart';

class BoardPage extends StatefulWidget {
  @override
  _BoardPageState createState() => _BoardPageState();
}

class _BoardPageState extends State<BoardPage> {
  int _selectedIndex = 1;

  final List<Widget> _pages = [
    HomePage(),
    PromoPage(),
    OrderPage(),
    Center(child: Text('Chat Page')), // Placeholder
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              _selectedIndex == 0
                  ? 'assets/images/home_click.png'
                  : 'assets/images/home.png',
              width: 24,
              height: 24,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              _selectedIndex == 1
                  ? 'assets/images/promo_click.png'
                  : 'assets/images/promo.png',
              width: 24,
              height: 24,
            ),
            label: 'Promos',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              _selectedIndex == 2
                  ? 'assets/images/order_click.png'
                  : 'assets/images/order.png',
              width: 24,
              height: 24,
            ),
            label: 'Orders',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/chat.png',
              width: 24,
              height: 24,
            ),
            label: 'Chat',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: AppColors.primaryGreen,
        unselectedItemColor: AppColors.gray,
        onTap: _onItemTapped,
      ),
    );
  }
}
