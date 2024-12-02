import 'package:flutter/material.dart';
import 'package:redesain_lazada/desain_sistem/styles/colors.dart';
import 'package:redesain_lazada/pages/account_pages.dart';
import 'package:redesain_lazada/pages/cart_pages.dart';
import 'home_pages.dart';

class TransactionPages extends StatelessWidget {
  const TransactionPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('transaction'),
      ),
      body: Center(
        child: Text('transaction'),
      ),
    );
  }
}
