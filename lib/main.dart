import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:masar/firebase_options.dart';

import 'package:masar/pages/welcom_page.dart';

Future<void> main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
} //commint here to test push

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomePage(),
    );
  }
}
