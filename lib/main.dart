import 'package:flutter/material.dart';
import 'package:test2/login_page.dart';
import 'package:test2/qrscannerscreen.dart';
import 'package:test2/theme.dart';
import 'device_page.dart';

void main() {
  runApp(MyApp());
}

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: QRScannerScreen(),
//     );
//   }
// }
//
//
// import 'package:flutter/material.dart';
// import 'theme.dart';
//
// void main() {
//   runApp(const MyApp());
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login App',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const LoginPage(), // Changed to ThemePage
    );
  }
}