import 'package:contact/contact-form.dart';
import 'package:contact/main.dart';
import 'package:flutter/material.dart';

class ModifyDialogWidget extends StatefulWidget {
  final String beforeName;
  final String beforePhone;

  const ModifyDialogWidget({
    required this.beforeName,
    required this.beforePhone,
  });

  @override
  State<StatefulWidget> createState() => _ModifyDialogState();
}

class _ModifyDialogState extends State<ModifyDialogWidget>
    with ContactFormWidget {
  MyAppState? _parent;
  late TextEditingController nameController;
  late TextEditingController phoneController;

  void modifyContact(Contact contact) {
    _parent?.setState(() {
      var currentContacts = _parent?.contacts as List<Contact>;
      var currentNameIdx = currentContacts
          .indexWhere((contact) => contact.name == widget.beforeName);

      currentContacts[currentNameIdx] = contact;
    });
  }

  @override
  Widget build(BuildContext context) {
    nameController = TextEditingController(text: widget.beforeName);
    phoneController = TextEditingController(text: widget.beforePhone);
    _parent = context.findAncestorStateOfType<MyAppState>();

    var payload = ContactFormPayload(
      title: "Modify Contact",
      nameController: nameController,
      phoneController: phoneController,
      context: context,
      update: modifyContact,
    );

    final form = super.getForm(payload);

    return Dialog(
      shape: form.shape,
      child: form.child,
    );
  }
}
