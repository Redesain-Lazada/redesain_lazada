import 'package:flutter/material.dart';
import 'package:redesain_lazada/pages/home_pages.dart';
import 'package:redesain_lazada/pages/cart_pages.dart';
import 'package:redesain_lazada/pages/transaction_pages.dart';
import 'package:redesain_lazada/pages/account_pages.dart';
import 'package:redesain_lazada/desain_sistem/styles/colors.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => NavigationState();
}

class NavigationState extends State<Navigation> {
  int _selectedIndex = 0;

  // Daftar halaman
  final List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    CartPages(),
    TransactionPages(),
    AccountPages(),
  ];

  void _onTappedItem(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_max_rounded),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_rounded),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_activity_rounded),
            label: "Transactions",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: "Account",
          ),
        ],
        currentIndex: _selectedIndex,
        unselectedItemColor: ColorsItem.primary,
        selectedItemColor: ColorsItem.secondary3,
        onTap: _onTappedItem,
      ),
    );
  }
}
