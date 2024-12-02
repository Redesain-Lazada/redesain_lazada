import 'package:flutter/material.dart';
import 'package:redesain_lazada/desain_sistem/styles/colors.dart';
import 'package:redesain_lazada/pages/account_pages.dart';
import 'package:redesain_lazada/pages/transaction_pages.dart';
import 'home_pages.dart';

class CartPages extends StatelessWidget {
  const CartPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart Page'),
      ),
      body: Center(
        child: Text('This is the Cart Page!'),
      ),
    );
  }
}
