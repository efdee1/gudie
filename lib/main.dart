import 'package:flutter/material.dart';
import 'package:hoc/bar/Phone.dart';

import 'Homepage.dart';
import 'bar/appbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(
      ),
    );
  }
}