import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:idance/firebase_options.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Welcome to the App"),
        ),
        body: Center(
          child: Text("HomePage")
        ),
      )
    );
  }
}