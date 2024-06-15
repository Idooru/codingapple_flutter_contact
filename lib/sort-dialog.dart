import 'package:contact/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SortDialogWidget extends StatefulWidget {
  const SortDialogWidget({super.key});

  @override
  State<StatefulWidget> createState() => _SortDialogState();
}

class _SortDialogState extends State<SortDialogWidget> {
  MyAppState? _parent;

  void ascOrder() {
    _parent?.setState(() {
      _parent?.contacts.sort((a, b) => a.name.compareTo(b.name));
    });
  }

  void descOrder() {
    _parent?.setState(() {
      _parent?.contacts.sort((a, b) => b.name.compareTo(a.name));
    });
  }

  @override
  Widget build(BuildContext context) {
    _parent = context.findAncestorStateOfType<MyAppState>();

    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Container(
        margin: EdgeInsets.all(20),
        width: 350,
        height: 60,
        child: Column(
          children: [
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: Align(
                alignment: Alignment.topLeft,
                child: Container(
                  child: Text(
                    "Sort",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: Container(
                width: 220,
                child: Row(
                  children: [
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: TextButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.grey[300]),
                            foregroundColor:
                                MaterialStateProperty.all(Colors.black)),
                        onPressed: ascOrder,
                        child: Text('오름차순'),
                      ),
                    ),
                    SizedBox(width: 20),
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: TextButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.grey[300]),
                            foregroundColor:
                                MaterialStateProperty.all(Colors.black)),
                        onPressed: descOrder,
                        child: Text('내림차순'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
