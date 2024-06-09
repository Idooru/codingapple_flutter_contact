import 'package:flutter/material.dart';

class ContactInput extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ContactState();
}

class _ContactState extends State<ContactInput> {
  String? contact;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value) {
        setState(() {
          contact = value;
        });
      },
      decoration: InputDecoration(border: InputBorder.none),
      cursorHeight: 20.0,
    );
  }
}
