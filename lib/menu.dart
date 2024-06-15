import 'package:contact/add-dialog.dart';
import 'package:contact/sort-dialog.dart';
import 'package:flutter/material.dart';

class MenuWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      backgroundColor: Colors.white,
      child: Container(
        width: 150,
        height: 120,
        child: Column(
          children: [
            Flexible(
              flex: 3,
              fit: FlexFit.tight,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.cyan[700],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10.0),
                    topRight: Radius.circular(10.0),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 12.0,
                    ),
                    Text(
                      'Menu',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Flexible(
              flex: 3,
              fit: FlexFit.tight,
              child: GestureDetector(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AddDialogWidget();
                    },
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.add,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 12.0,
                    ),
                    Text(
                      'Add Contact',
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    )
                  ],
                ),
              ),
            ),
            Flexible(
              flex: 3,
              fit: FlexFit.tight,
              child: GestureDetector(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return SortDialogWidget();
                      });
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.sort,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 12.0,
                    ),
                    Text(
                      'Sort Contact',
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    )
                  ],
                ),
              ),
            ),
            Flexible(
              flex: 2,
              fit: FlexFit.tight,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
