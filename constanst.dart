import 'package:flutter/material.dart';
import 'package:flutter_app/screens/home_screen.dart';

class Constants extends StatefulWidget {
  @override
  _ConstantsState createState() => _ConstantsState();

}

class _ConstantsState extends State<Constants>{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Dresses',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
        primaryColor: Colors.green[400],
        accentColor: Color(0xFFFEF9EB),
    ),
    home: HomeScreen(),
    );
  }
}
