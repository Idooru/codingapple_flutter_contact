import 'package:flutter/material.dart';

class LikesWidget extends StatefulWidget {
  final String name;
  final int like;

  const LikesWidget({super.key, required this.name, required this.like});

  @override
  State<LikesWidget> createState() => _LikesWidgetState(name: name, like: like);
}

class _LikesWidgetState extends State<LikesWidget> {
  String name;
  int like;

  _LikesWidgetState({required this.name, required this.like});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            child: Center(child: Text("${like}")),
          ),
          Flexible(
            flex: 8,
            child: Container(
              padding: EdgeInsets.only(left: 15),
              height: 50,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text('${name}'),
              ),
            ),
          ),
          Container(
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  like++;
                });
              },
              child: Text("좋아요"),
            ),
          ),
        ],
      ),
    );
  }
}
