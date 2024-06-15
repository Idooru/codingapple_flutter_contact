import 'package:contact/main.dart';
import 'package:flutter/material.dart';

class DeleteDialogWidget extends StatefulWidget {
  final String currentName;
  const DeleteDialogWidget({super.key, required this.currentName});

  @override
  State<StatefulWidget> createState() => _DeleteDialogState();
}

class _DeleteDialogState extends State<DeleteDialogWidget> {
  MyAppState? _parent;

  void removeNames(String name) {
    _parent?.setState(() {
      _parent?.contacts = _parent?.contacts
          .where((contact) => contact.name != name)
          .toList() as List<Contact>;
    });
  }

  @override
  Widget build(BuildContext context) {
    _parent = context.findAncestorStateOfType<MyAppState>();

    return AlertDialog(
      content: Text("are you sure to remove ${widget.currentName}?"),
      actions: [
        Flexible(
          flex: 1,
          fit: FlexFit.tight,
          child: TextButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.grey[300]),
                foregroundColor: MaterialStateProperty.all(Colors.black)),
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('cancle'),
          ),
        ),
        SizedBox(width: 5),
        Flexible(
          flex: 1,
          fit: FlexFit.tight,
          child: TextButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.red[800]),
                foregroundColor: MaterialStateProperty.all(Colors.black)),
            onPressed: () {
              removeNames(widget.currentName);
              Navigator.pop(context);
            },
            child: Text('delete'),
          ),
        ),
      ],
    );
  }
}
