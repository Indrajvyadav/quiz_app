import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Image.asset(
          //   'assets/images/quiz.png',
          //   width: 150,
          //color: const Color.fromARGB(51, 255, 255, 255),
          //),
          Opacity(
            opacity: 0.5,
            child: Image.asset(
              'assets/images/quiz.png',
              width: 150,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          const Opacity(
              opacity: 0.7,
              child: Text(
                'Learn Flutter the fun way!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromARGB(255, 246, 239, 56),
                ),
              )),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                //padding: const EdgeInsets.all(0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40))),
            icon: const Icon(Icons.arrow_circle_right_outlined),
            label: const Text(
              'Start Quiz!!',
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
          ),
        ],
      ),
    );
  }
}
