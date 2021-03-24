import 'package:flutter/material.dart';
import 'package:screensample/widgets/bottomNavigationBar.dart';
import 'widgets/main_column.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
                backgroundColor: Color(0xff949dff),
          body: SingleChildScrollView(child: MainColumn()),
          //bottomNavigationBar: CustomBottomNavigationBar()
      
      ),
    );
  }
}

