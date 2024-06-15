import 'package:contact/delete-dialog.dart';
import 'package:contact/main.dart';
import 'package:contact/modify-dialog.dart';
import 'package:contact/profile.dart';
import 'package:flutter/material.dart';

class ItemWidget extends StatefulWidget {
  final Contact contact;
  const ItemWidget({required this.contact});

  @override
  State<StatefulWidget> createState() => _ItemState();
}

class _ItemState extends State<ItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(color: Colors.black45, width: 0.5),
        ),
      ),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(7, 0, 7, 0),
            child: Icon(
              Icons.account_circle_sharp,
              size: 40.0,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                GestureDetector(
                  onTap: () => showDialog(
                    context: context,
                    builder: (context) {
                      var name = widget.contact.name;
                      var phone = widget.contact.phone;

                      return ProfileDialogWidget(
                        icon: Icons.account_circle_sharp,
                        name: name,
                        phone: phone,
                      );
                    },
                  ),
                  child: Text(widget.contact.name),
                ),
                SizedBox(width: 25.0),
                IconButton(
                  onPressed: () => showDialog(
                    context: context,
                    builder: (context) {
                      return ModifyDialogWidget(
                          beforeName: widget.contact.name,
                          beforePhone: widget.contact.phone);
                    },
                  ),
                  icon: Icon(
                    Icons.edit,
                    color: Colors.grey[600],
                  ),
                ),
                IconButton(
                  onPressed: () => showDialog(
                    context: context,
                    builder: (context) {
                      return DeleteDialogWidget(
                          currentName: widget.contact.name);
                    },
                  ),
                  icon: Icon(
                    Icons.delete,
                    color: Colors.red[800],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
