import 'package:contact/main.dart';
import 'package:flutter/material.dart';

class ContactForm {
  ShapeBorder? shape;
  Widget? child;

  ContactForm({required this.shape, required this.child});
}

class ContactFormPayload {
  final String title;
  final TextEditingController nameController;
  final TextEditingController phoneController;
  final BuildContext context;
  final void Function(Contact) update;

  const ContactFormPayload({
    required this.title,
    required this.nameController,
    required this.phoneController,
    required this.context,
    required this.update,
  });
}

mixin ContactFormWidget {
  ContactForm getForm(ContactFormPayload payload) {
    ShapeBorder? shape = RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
    );

    Widget? child = Container(
      margin: EdgeInsets.all(20),
      width: 50,
      height: 155,
      child: Column(
        children: [
          Flexible(
            flex: 1,
            fit: FlexFit.tight,
            child: Align(
              alignment: Alignment.topLeft,
              child: Container(
                child: Text(
                  payload.title,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ),
          Flexible(
            flex: 1,
            fit: FlexFit.tight,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Container(
                padding: EdgeInsets.only(bottom: 20),
                width: double.infinity,
                child: TextField(
                  controller: payload.nameController,
                  decoration: InputDecoration(
                      hintText: 'name', border: InputBorder.none),
                  cursorHeight: 20.0,
                ),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(width: 1.5, color: Colors.black38),
                  ),
                ),
              ),
            ),
          ),
          Flexible(
            flex: 1,
            fit: FlexFit.tight,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Container(
                padding: EdgeInsets.only(bottom: 20),
                width: double.infinity,
                child: TextField(
                  controller: payload.phoneController,
                  decoration: InputDecoration(
                      hintText: 'phone', border: InputBorder.none),
                  cursorHeight: 20.0,
                ),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(width: 1.5, color: Colors.black38),
                  ),
                ),
              ),
            ),
          ),
          Flexible(
            flex: 1,
            fit: FlexFit.tight,
            child: Align(
              alignment: Alignment.bottomRight,
              child: Container(
                width: 140,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(payload.context);
                      },
                      child: Text(
                        "Cancel",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        if (payload.nameController.text.length == 0) return;
                        var name = payload.nameController.text;
                        var phone = payload.phoneController.text;

                        payload.update(Contact(name: name, phone: phone));
                        Navigator.pop(payload.context);
                      },
                      child: Text(
                        "OK",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );

    return ContactForm(shape: shape, child: child);
  }
}
