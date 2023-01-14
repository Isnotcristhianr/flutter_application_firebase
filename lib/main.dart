import 'package:flutter/material.dart';
import 'package:flutter_application_firebase/vistaHome.dart';

void main() => runApp(const miApp());

// ignore: camel_case_types
class miApp extends StatelessWidget {
  const miApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: vistaHome(),
        theme: ThemeData.dark(),
        title: 'Aplicacion IsnotCR');
  }
}
