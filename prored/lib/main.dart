
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:prored/models/shop.dart';
import 'package:prored/pages/cart_page.dart';
import 'package:prored/pages/shop_page.dart';
import 'package:prored/themes/light_mode.dart';
import 'package:provider/provider.dart';
import 'pages/intro_page.dart';

void main() {
  runApp(
  ChangeNotifierProvider(
    create: (context) => Shop(),
    child: const MyApp()
    ),
   
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const IntroPage(),
      theme: lightMode,
      routes:{
        '/intro_page': (context) => const IntroPage(), 
        '/shop_page' :(context) => const ShopPage(),
        '/cart_page':(context) => const CartPage(),

      },
    );
  }
}
