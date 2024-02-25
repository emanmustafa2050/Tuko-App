import 'package:flutter/material.dart';
import 'package:tuko_app/Screens/HomePage.dart';

void main() {
  runApp(const TukoApp());
}

class TukoApp extends StatelessWidget 
{
  const TukoApp({super.key});

  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),

    );
  }
}


