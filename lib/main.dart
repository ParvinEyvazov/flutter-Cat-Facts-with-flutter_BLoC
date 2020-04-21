import 'package:cat_facts_app/locator.dart';
import 'package:cat_facts_app/ui/homepage.dart';
import 'package:flutter/material.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cat Facts',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),      
    );
  }
}
