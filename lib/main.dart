import 'package:flutter/material.dart';
import 'package:logindark/login_design.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Log In',
      debugShowCheckedModeBanner: false,
      initialRoute: 'login_design',
      theme: ThemeData.dark(),
      routes: {
        'login_design': (_) => LogInDesign(),
      },
    );
  }
}
