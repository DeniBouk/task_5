import 'package:flutter/material.dart';
import 'package:task_5/ui/contact_page/contact_item.dart';

class ContactContent extends StatelessWidget {
  const ContactContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ContactItem(
          contactName: "Test",
          contactNumber: "0895",
        )
      ],
    );
  }
}
