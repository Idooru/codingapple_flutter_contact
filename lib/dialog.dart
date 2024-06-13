import 'package:contact/contact_input.dart';
import 'package:flutter/material.dart';

class DialogWidget extends StatelessWidget {
  int number;
  final void Function() updateNumber;

  DialogWidget({required this.number, required this.updateNumber});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Container(
        margin: EdgeInsets.all(20),
        width: 150,
        height: 100,
        child: Row(
          children: [
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: Center(
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Center(
                    child: Text('$number'),
                  ),
                ),
              ),
            ),
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: ElevatedButton(
                onPressed: updateNumber,
                child: Text('press'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
