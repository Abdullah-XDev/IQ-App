import 'package:adv_basics/data/question.dart';
import 'package:adv_basics/question_screen.dart';
import 'package:adv_basics/results_screen.dart';
import 'package:flutter/material.dart';
import 'package:adv_basics/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswer = [];
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  void chooseAnwser(String anwser) {
    selectedAnswer.add(anwser);

    if (selectedAnswer.length == questions.length) {
      setState(() {
        activeScreen = 'results-screen';
      });
    }
  }

  void restartQuiz(){
    setState(() {
      activeScreen = 'question-screen';
      selectedAnswer = [];
    });
  }

  @override
  Widget build(context) {
    Widget screenWidegt = StartScreen(switchScreen);

    if (activeScreen == 'question-screen') {
      screenWidegt = QuestionScreen(
        onSelectAnswer: chooseAnwser,
      );
    }
    if (activeScreen == 'results-screen') {
      screenWidegt =  ResultsScreen(
        chosenAnswers: selectedAnswer,
        onRestart: restartQuiz,
        );
    }


    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 34, 146, 239),
                Color.fromARGB(255, 238, 215, 242),
                Color.fromARGB(255, 34, 205, 239)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidegt,
        ),
      ),
    );
  }
}
