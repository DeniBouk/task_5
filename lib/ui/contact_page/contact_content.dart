import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '/provider/contact_provider.dart';
import '/ui/contact_page/contact_item.dart';

class ContactContent extends StatelessWidget {
  const ContactContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ContactProvider>(
      builder: (
        BuildContext context,
        ContactProvider value,
        Widget? child,
      ) {
        if (value.contact.isEmpty) {
          return const Center(
            child: Text(
              "Empty contact list.",
            ),
          );
        }
        return ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return ContactItem(
              contactName: value.contact[index].contactName,
              contactNumber: value.contact[index].contactNumber,
            );
          },
          itemCount: value.contact.length,
        );
      },
    );
  }
}
