import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import 'Questions.dart';

void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> icons = [];

  Questions questions = Questions();

  void answerQuestion(bool answer) {
    bool isAnswerCorrect = questions.answerQuestion(answer);

    if (isAnswerCorrect) {
      setCorrectIcon();
    } else {
      setWrongIcon();
    }

    if (!questions.isLastQuestion()) {
      questions.nextQuestion();
    } else {
      showFinishAlert();
    }

    setState(() {
      questions.currentQuestion();
    });
  }

  void resetQuestions() {
    questions.resetQuestions();

    setState(() {
      icons.clear();
    });
  }

  void showFinishAlert() {
    Alert(
        context: context,
        type: AlertType.warning,
        title: 'Wow',
        desc: 'You\'ve just finished the questions',
        style: AlertStyle(
          animationType: AnimationType.grow,
          animationDuration: Duration(seconds: 1),
          isCloseButton: false,
          isOverlayTapDismiss: false,
        ),
        buttons: [
          DialogButton(
            child: Text(
              'Start again!',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            onPressed: () {
              onAlertConfirmed();
              Navigator.pop(context);
            },
            color: Colors.blue,
          )
        ]).show();
  }

  void onAlertConfirmed() {
    resetQuestions();
  }

  void setCorrectIcon() => icons.add(Icon(Icons.check, color: Colors.green));
  void setWrongIcon() => icons.add(Icon(Icons.close, color: Colors.red));

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                questions.currentQuestion().text,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.green,
              child: Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                answerQuestion(true);
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              color: Colors.red,
              child: Text(
                'False',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                answerQuestion(false);
              },
            ),
          ),
        ),
        Row(
          children: icons,
        )
      ],
    );
  }
}

/*
question1: 'You can lead a cow down stairs but not up stairs.', false,
question2: 'Approximately one quarter of human bones are in the feet.', true,
question3: 'A slug\'s blood is green.', true,
*/
