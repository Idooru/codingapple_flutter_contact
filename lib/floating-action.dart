import 'package:contact/menu.dart';
import 'package:flutter/material.dart';

class FloatingActionWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      backgroundColor: Colors.blue,
      foregroundColor: Colors.white,
      child: Icon(
        Icons.settings,
        size: 30,
      ),
      onPressed: () {
        showDialog(
          context: context,
          builder: (context) {
            return MenuWidget();
          },
        );
      },
    );
  }
}
