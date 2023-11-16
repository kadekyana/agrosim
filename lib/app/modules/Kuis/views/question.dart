class Question {
  String text;
  List<String> options;
  int correctIndex;
  String explanation;

  Question({
    required this.text,
    required this.options,
    required this.correctIndex,
    required this.explanation,
  });
}
