// ignore_for_file: file_names

// ignore: camel_case_types
class Question_Sequence {
  const Question_Sequence(this.question, this.answers);
  final String question;
  final List<String> answers;

  List<String> getShuffledAnswer() {
    final shuffleList = List.of(answers);
    shuffleList.shuffle();
    return shuffleList;
  }
}
