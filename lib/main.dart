import 'package:flutter/material.dart';
import 'package:flutter_application_firebase/vistaHome.dart';

//firebase
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

//void main() => runApp(const miApp());

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const miApp());
}

// ignore: camel_case_types
class miApp extends StatelessWidget {
  const miApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: vistaHome(),
        theme: ThemeData.dark(),
        title: 'Conceccion a BDD Firestore');
  }
}
