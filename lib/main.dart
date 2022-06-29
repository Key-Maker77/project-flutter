import 'package:flutter/material.dart';
import 'package:uts_flutter_project/profil.dart';

import 'login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Yuk UTS Flutter',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: LoginPage(),
    );
  }
}
