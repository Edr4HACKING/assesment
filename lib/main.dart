import 'package:aas/pages/Home.dart';
import 'package:aas/pages/ItemPage.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromARGB(255, 124, 117, 117),
      ),
      routes: {
        "/" : (context) => Home(),
        "itemPage": (context) => ItemPage(),
      },
    );
  }
}
