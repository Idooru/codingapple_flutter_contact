import 'package:contact/body.dart';
import 'package:contact/footer.dart';
import 'package:contact/header.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: Header(),
        body: Body(),
        bottomNavigationBar: Footer(),
      ),
    );
  }
}
