import 'package:flutter/material.dart';
import 'package:giftproject/ui/login/login_page.dart';
import 'package:giftproject/ui/screen/cart_view_screen.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CartViewScreen(),
    //  home: LoginPage(),
    );
  }
}
