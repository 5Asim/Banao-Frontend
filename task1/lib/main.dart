import 'package:flutter/material.dart';
import 'package:task1/page/login.dart';
import 'package:task1/page/start_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      
      home: LoginPage(),
    );
  }
}

