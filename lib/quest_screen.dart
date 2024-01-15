import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestScreen extends StatefulWidget {
  const QuestScreen(this.onSelectAns, {super.key});

  final void Function(String item) onSelectAns;

  @override
  State<QuestScreen> createState() {
    return _QuestState();
  }
}

class _QuestState extends State<QuestScreen> {
  var currentClick = 0;

  void answerQuest(String selectedAns) {
    widget.onSelectAns(selectedAns);
    setState(() {
      currentClick++;
    });
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[currentClick];
    return Container(
      margin: const EdgeInsets.all(20),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: GoogleFonts.robotoCondensed(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 25,
            ),
            ...currentQuestion.shuffledAns.map(
              (item) => AnswerButton(
                item, //here item= answers that we select.
                () {
                  answerQuest(item);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
