class Question{
  String question;

  String optionA;
  String optionB;
  String optionC;
  String optionD;

  int type;

  String ans;

  Question(
      {required this.question,
      required this.optionA,
      required this.optionB,
      required this.optionC,
      required this.optionD,
      required this.ans,
      required this.type});
}