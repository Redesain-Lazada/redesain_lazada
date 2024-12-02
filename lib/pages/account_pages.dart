import 'package:flutter/material.dart';
import 'package:redesain_lazada/desain_sistem/styles/colors.dart';
import 'package:redesain_lazada/pages/cart_pages.dart';
import 'package:redesain_lazada/pages/transaction_pages.dart';
import 'home_pages.dart';

class AccountPages extends StatelessWidget {
  const AccountPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('akun'),
      ),
      body: Center(
        child: Text('This is the Account Page!'),
      ),
    );
  }
}
