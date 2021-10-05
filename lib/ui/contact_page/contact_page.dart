import 'package:flutter/material.dart';
import 'package:task_5/ui/contact_page/contact_content.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "My Contact",
        ),
      ),
      body: ContactContent(),
    );
  }
}
