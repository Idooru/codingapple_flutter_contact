import 'package:flutter/material.dart';

class ProfileDialogWidget extends StatelessWidget {
  final IconData icon;
  final String name;
  final String phone;

  const ProfileDialogWidget({
    required this.icon,
    required this.name,
    required this.phone,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      backgroundColor: Colors.white,
      child: Container(
        width: 50,
        height: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              flex: 1,
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
                      Icons.contact_page,
                      color: Colors.white,
                    ),
                    SizedBox(width: 12.0),
                    Text(
                      'Contact profile',
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
              flex: 2,
              fit: FlexFit.tight,
              child: Icon(
                icon,
                size: 80.0,
              ),
            ),
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: Text(
                '$name',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 26,
                ),
              ),
            ),
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: Text(
                '$phone',
                style: TextStyle(
                  fontWeight: FontWeight.w100,
                  fontSize: 23,
                ),
              ),
            ),
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10.0),
                    bottomRight: Radius.circular(10.0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
