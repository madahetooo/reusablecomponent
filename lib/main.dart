import 'package:flutter/material.dart';
import 'package:reusablecomponent/modules/registration/presentation/pages/registration_screen.dart';
import 'package:reusablecomponent/modules/reverse_string/presentation/pages/reverse_string_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const ReverseStringApp(),
    );
  }
}
