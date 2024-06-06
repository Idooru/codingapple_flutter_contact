import 'package:contact/profile.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[300],
      child: ListView(
        children: [
          Profile(
            name: "홍길동",
          ),
          Profile(
            name: "이승훈",
          ),
          Profile(
            name: "박승훈",
          ),
        ],
      ),
    );
  }
}
