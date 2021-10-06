import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import '/input.dart';
import '/provider/contact_provider.dart';
import '/ui/contact_page/contact_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: <SingleChildWidget>[
        ChangeNotifierProvider(
          create: (BuildContext context) {
            return ContactProvider();
          },
        ),
      ],
      child: MaterialApp(
        routes: <String, WidgetBuilder>{
          '/home': (BuildContext context) {
            return const ContactPage();
          },
          '/editor': (BuildContext context) {
            return SimpleInput();
          },
        },
        initialRoute: '/home',
      ),
    );
  }
}
