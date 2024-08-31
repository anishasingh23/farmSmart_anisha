import 'package:farmsmart/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "FarmSmart",
      home: LoginScreen(),
    );

  }

}
