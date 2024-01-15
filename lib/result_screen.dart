import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_summary.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(this.chosenAns, this.onRestart, {super.key});

  final List<String> chosenAns;

  final void Function() onRestart;

  List<Map<String, Object>> get summaryData {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAns.length; i++) {
      summary.add({
        'quest_index': i,
        'questions': questions[i].text,
        'crct_ans': questions[i].answers[0],
        'user_ans': chosenAns[i]
      });
    }
    return summary;
  }

  @override
  Widget build(context) {
    final numTotalQuest = questions.length;
    final numCrctQuest = summaryData
        .where(
          (data) => data['user_ans'] == data['crct_ans'],
        )
        .length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You answered $numCrctQuest out of $numTotalQuest Questions',
              style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 113, 178, 231),
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            QuestionsSummary(
              summaryData,
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: onRestart,
              child: const Text('RESTART'),
            ),
          ],
        ),
      ),
    );
  }
}
