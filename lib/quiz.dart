import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/start_screen.dart';
import 'package:quiz_app/quest_screen.dart';
import 'package:quiz_app/result_screen.dart';

const AlignmentGeometry scolor = Alignment.topCenter;
const AlignmentGeometry ecolor = Alignment.bottomCenter;

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAns = [];

  var activeScreen = 'start-screen';

  // @override
  // void initState() {
  //   activeScreen = StartScreen(switchScreen);
  //   super.initState();
  // }
  void switchScreen() {
    setState(
      () {
        activeScreen = 'quest-screen';
      },
    );
  }

  void chooseAns(String item) {
    selectedAns.add(item);

    if (selectedAns.length == questions.length) {
      setState(() {
        activeScreen = 'result-screen';
      });
    }
  }

  void restartQuiz() {
    setState(() {
      selectedAns = [];
      activeScreen = 'quest-screen';
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == 'quest-screen') {
      screenWidget = QuestScreen(chooseAns);
    }

    if (activeScreen == 'result-screen') {
      screenWidget = ResultScreen(
        selectedAns,
        restartQuiz,
      );
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 106, 29, 161),
              Color.fromARGB(255, 207, 169, 234),
            ], begin: scolor, end: ecolor),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
