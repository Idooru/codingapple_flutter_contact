import 'package:contact/body.dart';
import 'package:contact/floating-action.dart';
import 'package:contact/footer.dart';
import 'package:contact/header.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ContactApp());
}

class Contact {
  final String name;
  final String phone;

  const Contact({required this.name, required this.phone});
}

class ContactApp extends StatefulWidget {
  ContactApp({super.key});

  @override
  State<StatefulWidget> createState() => MyAppState();
}

class MyAppState extends State<ContactApp> {
  // var names = ['김영숙', '홍길동', '피자집'];
  List<Contact> contacts = [
    Contact(name: '김영숙', phone: '010-1234-5678'),
    Contact(name: '홍길동', phone: '010-8765-4321'),
    Contact(name: '피자집', phone: '031-000-1111'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Builder(builder: (context) {
        return Scaffold(
          floatingActionButton: FloatingActionWidget(),
          appBar: Header(number: contacts.length),
          body: Body(contacts: contacts),
          bottomNavigationBar: Footer(),
        );
      }),
    );
  }
}
