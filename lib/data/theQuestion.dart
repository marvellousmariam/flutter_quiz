// ignore_for_file: file_names

import 'package:flutter_quiz/model/questionSequence.dart';

const questions = [
  Question_Sequence(
    'Which of the following tag is used to make the underlined text ?',
    ['<u>', '<i>', '<ul>', '<pre>'],
  ),
  Question_Sequence(
    'What is the correct CSS syntax ?',
    [
      'body{color:black}',
      '{body;color:black}',
      '{body:color=black(body)}',
      'body:color=black'
    ],
  ),
  Question_Sequence(
    'Which of the following keyword is used to define a variable in JavaScript ?',
    ['var and let', 'let', 'var', 'None of the above'],
  ),
  Question_Sequence(
    'Which of the following tag is used to define the options in a drop-down selection list ?',
    ['<option>', '<select>', '<list>', '<dropdown>'],
  ),
  Question_Sequence(
    'Which of the following CSS Property controls how the element is positioned ?',
    ['position', 'fix', 'set', 'static'],
  ),
  Question_Sequence(
    'How can a datatype be declared to be a constant type?',
    ['const', ' var', 'constant', 'let'],
  ),
  Question_Sequence(
    'Which character is used to represent the closing of a tag in HTML  ?',
    ['/', '|', '\\', '.'],
  ),
  Question_Sequence(
    'In CSS, "font-size" can be called as?',
    ['Property', 'Rule', 'Selector', 'Property-Name'],
  ),
  Question_Sequence(
    'Which of the following method can be used to display data in some form using JavaScript ?',
    ['All of the above', 'document.write()', 'console.log()', 'window.alert'],
  ),
  Question_Sequence(
    'Which of the following HTML tag is used to create an unordered list ?',
    ['<ul>', '<ol>', '<li>', '<br>'],
  ),
];
