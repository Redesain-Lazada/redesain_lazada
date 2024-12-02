import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:redesain_lazada/desain_sistem/navigation/navigation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Bottom Navbar',
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(),
        primarySwatch: Colors.blue,
      ),
      home: Navigation(), // Arahkan langsung ke HomePage
    );
  }
}
