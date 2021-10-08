import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_5/model/contact.dart';
import 'package:task_5/provider/contact_provider.dart';

class SimpleInput extends StatelessWidget {
  TextEditingController namaController = TextEditingController();
  TextEditingController nomorController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Object? args = ModalRoute.of(context)?.settings.arguments;
    int? index;
    Contact? contact;
    if (args is Map<String, dynamic>) {
      if (args['index'] is int && args['contact'] is Contact) {
        index = args['index'];
        contact = args['contact'];
        namaController.text = contact!.contactName;
        nomorController.text = contact.contactNumber;
      }
    }

    return Scaffold(
        appBar: AppBar(
          title: const Text('Contact Editor'),
        ),
        body: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: namaController,
                decoration: const InputDecoration(
                  suffixIcon: Icon(
                    Icons.account_circle_outlined,
                  ),
                  labelText: 'Nama',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: nomorController,
                decoration: const InputDecoration(
                  suffixIcon: Icon(
                    Icons.phone_outlined,
                  ),
                  labelText: 'Nomor Telepon',
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Consumer<ContactProvider>(
                    builder: (
                      BuildContext context,
                      ContactProvider value,
                      Widget? child,
                    ) {
                      return ElevatedButton(
                        // Tombol Navigator ke New Screen
                        onPressed: () {
                          if (index != null) {
                            value.editContact(
                              index,
                              Contact(
                                  contactName: namaController.text,
                                  contactNumber: nomorController.text),
                            );
                          } else {
                            value.addContact(
                              Contact(
                                contactName: namaController.text,
                                contactNumber: nomorController.text,
                              ),
                            );
                          }
                          Navigator.pop(context);
                        },
                        child: const Text('Save'),
                      );
                    },
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
