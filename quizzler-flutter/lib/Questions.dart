class Questions {
  int _index = 0;

  List<Question> _questions = [
    Question('A dog can fly.', false),
    Question('A bird sings.', true),
    Question('A human has 3 eyes.', false),
    Question('Some cats are actually allergic to humans', true),
    Question('You can lead a cow down stairs but not up stairs.', false),
    Question('Approximately one quarter of human bones are in the feet.', true),
    Question('A slug\'s blood is green.', true),
    Question('Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', true),
    Question('It is illegal to pee in the Ocean in Portugal.', true),
    Question(
        'No piece of square dry paper can be folded in half more than 7 times.',
        false),
    Question(
        'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        true),
    Question(
        'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        false),
    Question(
        'The total surface area of two human lungs is approximately 70 square metres.',
        true),
    Question('Google was originally called \"Backrub\".', true),
    Question(
        'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        true),
    Question(
        'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        true),
  ];

  Question currentQuestion() {
    return _questions[_index];
  }

  bool isLastQuestion() {
    return _index == _questions.length - 1;
  }

  Question nextQuestion() {
    if (!isLastQuestion()) {
      _index++;
      return currentQuestion();
    } else {
      return null;
    }
  }

  bool answerQuestion(bool answer) {
    return _questions[_index].isAnswerCorrect(answer);
  }

  Question resetQuestions() {
    _index = 0;
    _questions.shuffle();
    return currentQuestion();
  }
}

class Question {
  String text;
  bool answer;

  Question(this.text, this.answer);

  bool isAnswerCorrect(bool answer) {
    return answer == this.answer;
  }
}
