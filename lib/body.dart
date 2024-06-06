import 'package:contact/likes.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  Body({super.key});

  var names = ['김영숙', '홍길동', '피자집'];
  var likes = [0, 0, 0];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[300],
      child: ListView.builder(
        itemCount: names.length,
        itemBuilder: (context, i) => LikesWidget(
          name: names[i],
          like: likes[i],
        ),
      ),
    );
  }
}
