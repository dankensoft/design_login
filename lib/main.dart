import 'package:flutter/material.dart';
import 'package:logindark/home_page.dart';
import 'package:logindark/login_design.dart';
import 'package:logindark/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider(
        child: MaterialApp(
      title: 'Log In',
      debugShowCheckedModeBanner: false,
      initialRoute: 'login_design',
      // theme: ThemeData.dark(),
      routes: {
        'login_design': (_) => LogInDesign(),
        'home': (_) => HomePage(),
      },
    ));
  }
}
