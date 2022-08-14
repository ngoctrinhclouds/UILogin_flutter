import 'package:flutter/material.dart';

import 'body_Login.dart';

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
      title: 'Flutter Demo',
      theme: ThemeData(
        // primaryColor: kPrimaryColor,
        // scaffoldBackgroundColor: Colors.white,
      ),
      home: const Login(),
    );
  }
}

