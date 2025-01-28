import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice_app/home_screen.dart';

void main(){
  runApp(const calculatorApp());
}

class calculatorApp extends StatelessWidget {
  const calculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      home: const HomeScreen(),
      theme: ThemeData(
        appBarTheme: const AppBarTheme(

          backgroundColor: Colors.red,
          foregroundColor: Colors.white,
        ),
        inputDecorationTheme: const InputDecorationTheme(
      border: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.blue)
    ),

    focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.blue)

    ),
    disabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.blue)
    ),
    errorBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.red)
    ),
    contentPadding: EdgeInsets.all(16)


    ),

      ),
    );
  }
}
