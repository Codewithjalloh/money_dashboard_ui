import 'package:flutter/material.dart';
import 'money_ui.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Money Dashboard UI",
      theme: ThemeData(
        primarySwatch: Colors.purple
      ),
      home: MoneyUI(),
    );
  }
}






