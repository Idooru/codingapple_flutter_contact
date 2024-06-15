import 'package:contact/contact-form.dart';
import 'package:contact/main.dart';
import 'package:flutter/material.dart';

class AddDialogWidget extends StatefulWidget {
  const AddDialogWidget({super.key});

  @override
  State<StatefulWidget> createState() => _AddDialogState();
}

class _AddDialogState extends State<AddDialogWidget> with ContactFormWidget {
  MyAppState? _parent;
  final nameController = TextEditingController();
  final phoneController = TextEditingController();

  void addContact(Contact contact) {
    print(contact);

    _parent?.setState(() {
      var currentContacts = _parent?.contacts as List<Contact>;
      _parent?.contacts = [...currentContacts, contact];
    });
  }

  @override
  Widget build(BuildContext context) {
    _parent = context.findAncestorStateOfType<MyAppState>();

    var payload = ContactFormPayload(
      title: "Contact",
      nameController: nameController,
      phoneController: phoneController,
      context: context,
      update: addContact,
    );

    final form = super.getForm(payload);

    return Dialog(
      shape: form.shape,
      child: form.child,
    );
  }
}
