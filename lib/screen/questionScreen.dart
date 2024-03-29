// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_quiz/AnswerButton.dart';
import 'package:flutter_quiz/data/theQuestion.dart';
import 'package:flutter_quiz/screen/resultScreen.dart';
import 'package:flutter_quiz/theme/myGradient.dart';

// ignore: camel_case_types, must_be_immutable
class Question_Screen extends StatefulWidget {
  const Question_Screen({super.key});

  @override
  State<Question_Screen> createState() => _Question_ScreenState();

  void nextQuestion(String answer) {}
}

// ignore: camel_case_types
class _Question_ScreenState extends State<Question_Screen> {
  var currentQuestionIndex = 0;

  void nextQuestion(String answer) {
    resultScreen(answer);
    setState(() {
      currentQuestionIndex++;
    });
  }
  List<String> selectedAnswer = [];
  void resultScreen(String answer) {
    selectedAnswer.add(answer);
    if (selectedAnswer.length == questions.length) {
      setState(() {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Result_Screen(
                chosenAnswer: selectedAnswer,
              ),
            ));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];
    final totalquestionIndex = questions.length;
    final thecurrentnumber = currentQuestionIndex + 1;
    return MaterialApp(
      home: Scaffold(
        body: Container(
          height: double.infinity,
          decoration: BoxDecoration(gradient: myGradient),
          child: Center(
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
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        children: [
                          Text(
                            '$thecurrentnumber',
                            style: const TextStyle(
                                color: Color.fromARGB(255, 19, 28, 41),
                                fontSize: 30,
                                fontWeight: FontWeight.w500),
                          ),
                          const Text(
                            '/',
                            style: TextStyle(
                                color: Color.fromARGB(255, 19, 28, 41),
                                fontSize: 22,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            '$totalquestionIndex',
                            style: const TextStyle(
                                color: Color.fromARGB(255, 19, 28, 41),
                                fontSize: 22,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        currentQuestion.question,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            color: Color.fromARGB(255, 19, 28, 41),
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      ...currentQuestion.getShuffledAnswer().map((answer) {
                        return Answer_Button(
                            answerText: answer,
                            next: () {
                              nextQuestion(answer);
                            });
                      }),
                      const SizedBox(
                        height: 10,
                      )
                    ],
                  ),
                )),
          ),
        ),
      ),
    );
  }
}
