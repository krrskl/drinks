import 'package:drinks/views/Home_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Drinks',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(
          textTheme: GoogleFonts.varelaRoundTextTheme(
        Theme.of(context).textTheme,
      )),
    );
  }
}
