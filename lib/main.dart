import 'package:flutter/material.dart';
import 'package:paypal_clone/LoginPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Paypal Clone',
        home: LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}


