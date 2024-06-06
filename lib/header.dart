import 'package:flutter/material.dart';

class Header extends StatelessWidget implements PreferredSizeWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Icon(
        Icons.man,
        color: Colors.white,
      ),
      title: Text(
        "Contact",
        style: TextStyle(color: Colors.white),
      ),
      backgroundColor: Colors.cyan[700],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
