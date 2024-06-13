import 'package:contact/body.dart';
import 'package:contact/dialog.dart';
import 'package:contact/footer.dart';
import 'package:contact/header.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var names = ['김영숙', '홍길동', '피자집'];
  var number = 3;

  void updateNumber() {
    setState(() {
      number++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Builder(builder: (context) {
        return Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return DialogWidget(
                    number: number,
                    updateNumber: updateNumber,
                  );
                },
              );
            },
          ),
          appBar: Header(),
          body: Body(names: names),
          bottomNavigationBar: Footer(),
        );
      }),
    );
  }
}
