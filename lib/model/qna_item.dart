
class QnaItem{
  String question;
  String answer;
  bool isExpanded;

  QnaItem({
    required this.question,
    required this.answer,
    this.isExpanded = false
  });
}

List<QnaItem> generateItems(int numberofitem){
  return List.generate(numberofitem, (index) {
    return QnaItem(
      question: "${index+1} Question ?",
      answer: " ${index+1}."
    );
  });
}