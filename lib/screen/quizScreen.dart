// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_quiz/screen/startScreen.dart';
import 'package:flutter_quiz/theme/myGradient.dart';

class Quiz_Screen extends StatefulWidget {
  const Quiz_Screen({super.key});

  @override
  State<Quiz_Screen> createState() => _Quiz_ScreenState();
}

class _Quiz_ScreenState extends State<Quiz_Screen> {
  Object activeScreen = const Start_Screen();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(gradient: myGradient),
          child: activeScreen as Widget,
        ),
      ),
    );
  }
}
