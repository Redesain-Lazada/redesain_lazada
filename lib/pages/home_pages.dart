import 'package:flutter/material.dart';
import 'package:redesain_lazada/desain_sistem/styles/colors.dart';
import 'cart_pages.dart';
import 'transaction_pages.dart';
import 'account_pages.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Text('Welcome to the Home Page!'),
      ),
    );
  }
}
