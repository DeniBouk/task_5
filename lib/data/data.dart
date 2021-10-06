import 'package:task_5/model/contact.dart';

class Data {
  List<Contact> data = <Contact>[];

  Data() {
    data = ([
      Contact(contactName: "contactName", contactNumber: "contactNumber"),
    ]);
  }

  List<Contact> getData() {
    return data;
  }
}
