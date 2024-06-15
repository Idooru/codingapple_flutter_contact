import 'package:contact/main.dart';
import 'package:contact/item.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  final List<Contact> contacts;
  const Body({super.key, required this.contacts});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[300],
      child: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (context, i) {
          return ItemWidget(contact: contacts[i]);
        },
      ),
    );
  }
}
