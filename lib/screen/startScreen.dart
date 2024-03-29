// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_quiz/screen/questionScreen.dart';
import 'package:flutter_quiz/theme/myGradient.dart';

// ignore: camel_case_types
class Start_Screen extends StatelessWidget {
  const Start_Screen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Color mycolor = const Color.fromARGB(166, 255, 255, 255);
    return MaterialApp(
      home: Container(
        height: 400,
        decoration: BoxDecoration(
          gradient: myGradient,
        ),
        child: Center(
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            Image.asset(
              'image/quiz-icon.png',
              color: mycolor,
              height: 300,
            ),
            const SizedBox(
              height: 80,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Question_Screen(),
                    ));
              },
              child: Container(
                width: 100,
                height: 50,
                decoration: BoxDecoration(
                    color: mycolor,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(15)),
                child: const Center(
                  child: Text(
                    'Start',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color.fromARGB(255, 19, 28, 41),
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
