import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  final String name;
  const Profile({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(color: Colors.black45, width: 0.5),
        ),
      ),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(7, 0, 7, 0),
            child: Icon(
              Icons.account_circle_sharp,
              size: 40.0,
            ),
          ),
          Expanded(child: Text(name)),
        ],
      ),
    );
  }
}
