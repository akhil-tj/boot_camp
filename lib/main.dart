import 'package:boot_camp/Screens/Details/product_details.dart';
import 'package:boot_camp/Screens/Forms/form_page.dart';
import 'package:boot_camp/Screens/Home/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Start());
}

class Start extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        ProductDetails.routeName: (context) => ProductDetails(),
        '/form': (context) => NewForm(),
      },
      home: MyApp(),
    );
  }
}
