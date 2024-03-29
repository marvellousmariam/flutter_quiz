// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_quiz/theme/myGradient.dart';

class Answer_Summary extends StatelessWidget {
  const Answer_Summary(this.summaryData, {super.key});
  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          height: double.infinity,
          decoration: BoxDecoration(gradient: myGradient),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 200,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color.fromARGB(218, 255, 255, 255)),
                child: const Text(
                  'Answer Summary',
                  style: TextStyle(
                      color: Color.fromARGB(255, 19, 28, 41),
                      height: 3,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              Center(
                child: Container(
                  height: 500,
                  width: double.infinity,
                  margin: const EdgeInsets.all(7),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(218, 255, 255, 255),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                    margin: const EdgeInsets.all(40),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: summaryData.map((data) {
                          var theuser = data['user_answer'] as String;
                          var thecorrect = data['correct_answer'] as String;
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 60),
                                child: Text(
                                    ((data['question_index'] as int) + 1)
                                        .toString()),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    Text(
                                      data['question'] as String,
                                      style: const TextStyle(
                                        color: Color.fromARGB(255, 19, 28, 41),
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    Text(
                                      'User Answer: $theuser',
                                      style: const TextStyle(
                                        color: Color.fromARGB(255, 19, 28, 41),
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    Text(
                                      'Correct Answer: $thecorrect',
                                      style: const TextStyle(
                                        color: Color.fromARGB(255, 19, 28, 41),
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    )
                                  ],
                                ),
                              )
                            ],
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
