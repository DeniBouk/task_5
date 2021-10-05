import 'package:flutter/material.dart';
import '/ui/contact_page/contact_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ContactPage(),
    );
  }
}
