import 'package:contact/profile.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  List<String> names;
  Body({super.key, required this.names});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[300],
      child: ListView.builder(
        itemCount: names.length,
        itemBuilder: (context, i) {
          return Profile(name: names[i]);
        },
      ),
    );
  }
}
