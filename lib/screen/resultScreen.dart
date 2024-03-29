// ignore_for_file: camel_case_types, must_be_immutable, overridden_fields

import 'package:flutter/material.dart';
import 'package:flutter_quiz/data/theQuestion.dart';
import 'package:flutter_quiz/screen/answerSummary.dart';
import 'package:flutter_quiz/screen/questionScreen.dart';
import 'package:flutter_quiz/theme/myGradient.dart';

class Result_Screen extends StatefulWidget {
  Result_Screen({super.key, required this.chosenAnswer});
  List<String> chosenAnswer;
  @override
  State<Result_Screen> createState() => _Result_ScreenState();
}

class _Result_ScreenState extends State<Result_Screen> {
  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < widget.chosenAnswer.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].question,
        'correct_answer': questions[i].answers[0],
        'user_answer': widget.chosenAnswer[i]
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    void summarydata() {
      setState(() {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Answer_Summary(getSummaryData()),
          ),
        );
      });
    }

    void restart() {
      setState(() {

        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const Question_Screen(),
            ));
        widget.chosenAnswer = [];

      });
    }

    final summaryData = getSummaryData();
    final numbCorrectAnswer = summaryData.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;
    final numbWrongAnswer = summaryData.where((data) {
      return data['user_answer'] != data['correct_answer'];
    }).length;
    final userScore = numbCorrectAnswer * 5;
    final totalScore = questions.length * 5;
    return MaterialApp(
      home: Scaffold(
        body: Container(
          height: double.infinity,
          decoration: BoxDecoration(gradient: myGradient),
          child: Center(
            child: Container(
              height: 500,
              width: double.maxFinite,
              margin: const EdgeInsets.all(7),
              decoration: BoxDecoration(
                color: const Color.fromARGB(218, 255, 255, 255),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('$userScore',
                            style: const TextStyle(
                                color: Color.fromARGB(255, 19, 28, 41),
                                fontSize: 40,
                                fontWeight: FontWeight.w500)),
                        const Text(
                          '/',
                          style: TextStyle(
                              color: Color.fromARGB(255, 19, 28, 41),
                              fontSize: 30,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          '$totalScore',
                          style: const TextStyle(
                              color: Color.fromARGB(255, 19, 28, 41),
                              fontSize: 30,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Text(
                            'Correct Answer: $numbCorrectAnswer',
                            style: const TextStyle(
                              color: Color.fromARGB(255, 19, 28, 41),
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Text(
                          'Wrong Answer: $numbWrongAnswer',
                          style: const TextStyle(
                            color: Color.fromARGB(255, 19, 28, 41),
                            fontSize: 20,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton.icon(
                          onPressed: restart,
                          icon: const Icon(
                            Icons.restart_alt,
                            color: Color.fromARGB(255, 28, 167, 236),
                            size: 17,
                          ),
                          label: const Text(
                            'Restart',
                            style: TextStyle(
                                color: Color.fromARGB(255, 19, 28, 41),
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextButton.icon(
                            onPressed: summarydata,
                            icon: const Icon(
                              Icons.notes,
                              color: Color.fromARGB(255, 28, 167, 236),
                              size: 17,
                            ),
                            label: const Text(
                              'Answer Summary',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 19, 28, 41),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            ))
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
