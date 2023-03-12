import 'dart:async';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:idance/firebase_options.dart';
import 'package:idance/presentation/auth/controllers/auth_controller/auth_binding.dart';
import 'package:idance/presentation/auth/view/auth_pages/login_page.dart';

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