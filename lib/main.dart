import 'package:flutter/material.dart';
import 'package:smart_course_app/resources/colors.dart';
import 'data/data.dart';
import 'loginpage.dart';
import 'models/categorie_model.dart';
import 'models/product_model.dart';
import 'models/trending_productmodel.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        /* light theme settings */
      ),
      home:loginPage(),
    );
  }
}

