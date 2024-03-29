// ignore_for_file: camel_case_types, must_be_immutable

import 'package:flutter/material.dart';

class Answer_Button extends StatelessWidget {
  Answer_Button({super.key, required this.answerText, required this.next});
  void Function() next;
  final String answerText;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: next,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Container(
          width: 100,
          height: 30,
          decoration: BoxDecoration(
            color: const Color.fromARGB(218, 255, 255, 255),
            boxShadow: List.filled(
                3,
                const BoxShadow(
                    color: Color.fromARGB(195, 221, 221, 221),
                    blurRadius: 3,
                    blurStyle: BlurStyle.outer,
                    offset: Offset(BorderSide.strokeAlignOutside,
                        BorderSide.strokeAlignOutside),
                    spreadRadius: BorderSide.strokeAlignOutside),
                growable: true),
          ),
          child: Text(
            answerText,
            textAlign: TextAlign.center,
            style: const TextStyle(
                color: Color.fromARGB(255, 19, 28, 41),
                fontSize: 16,
                fontWeight: FontWeight.w400),
          ),
        ),
      ),
    );
  }
}
