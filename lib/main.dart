import 'package:flutter/material.dart';
import 'package:midterm_630710670/page/temp_page.dart';
import 'package:midterm_630710670/temp.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var gp = TempPage();

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue,),
      home: gp, // home: Gamepage(); ได้เหมือนกัน
    );
  }
}
