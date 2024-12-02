import 'package:flutter/material.dart';
import 'package:redesain_lazada/desain_sistem/styles/colors.dart';
import 'package:redesain_lazada/pages/account_pages.dart';
import 'package:redesain_lazada/pages/transaction_pages.dart';
import 'home_pages.dart';

class CartPages extends StatelessWidget {
  final int selectedIndex;

  const CartPages({Key? key, required this.selectedIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart Page'),
      ),
      body: Center(
        child: Text('This is the Cart Page!'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
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
        currentIndex: selectedIndex,
        unselectedItemColor: ColorsItem.primary,
        selectedItemColor: ColorsItem.secondary3,
        onTap: (index) {
          switch (index) {
            case 0:
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomePage(selectedIndex: index),
                ),
              );
              break;
            case 1:
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CartPages(selectedIndex: index),
                ),
              );
              break;
            case 2:
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TransactionPages(selectedIndex: index),
                ),
              );
              break;
            case 3:
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AccountPages(selectedIndex: index),
                ),
              );
              break;
          }
        },
        selectedFontSize: 20,
      ),
    );
  }
}
