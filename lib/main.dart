import 'package:flutter/material.dart';
import 'package:myapp/intro_page.dart';
import 'package:myapp/product_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const IntroPage(),
      initialRoute: '/introPage',
      routes: {
        '/introPage': (context) => const IntroPage(),
        '/productPage': (context) => const ProductPages(),
      },
    );
  }
}
