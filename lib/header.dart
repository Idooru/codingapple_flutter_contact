import 'package:flutter/material.dart';

class Header extends StatelessWidget implements PreferredSizeWidget {
  final int number;
  const Header({super.key, required this.number});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Icon(
        Icons.man,
        color: Colors.white,
      ),
      title: Text(
        "Contact $number",
        style: TextStyle(color: Colors.white),
      ),
      backgroundColor: Colors.cyan[700],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
