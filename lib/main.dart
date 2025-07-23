import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/register/register_guide.dart';
import 'package:flutter_application_1/pages/register/register_guide_2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'demo', home: const Register_guide_2());
  }
}
