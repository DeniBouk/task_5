import 'package:flutter/material.dart';

import '/model/contact.dart';

class ContactProvider extends ChangeNotifier {
  final List<Contact> contact = <Contact>[];

  List<Contact> get contactList {
    return contact;
  }

  void addContact(Contact newContact) {
    contact.add(newContact);
    notifyListeners();
  }

  void editContact(int index, Contact newContact) {
    contact[index] = newContact;
    notifyListeners();
  }

  void deleteContact(int index) {
    contact.removeAt(index);
    notifyListeners();
  }
}
