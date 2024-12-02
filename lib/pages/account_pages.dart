import 'package:flutter/material.dart';

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
