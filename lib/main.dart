import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nimu_jobs/constants.dart';
import 'package:nimu_jobs/pages/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nimu Jobs',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        canvasColor: bgColor,
      ),
      home: HomePage(),
    );
  }
}
