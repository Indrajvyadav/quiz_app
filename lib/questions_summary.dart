import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;
  @override
  Widget build(context) {
    return SizedBox(
      height: 450,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 0.5,
                        color: const Color.fromARGB(131, 181, 47, 165),
                      ),
                      color: const Color.fromARGB(131, 181, 47, 165),
                    ),
                    padding: const EdgeInsets.all(5),
                    child: Text(
                      ((data['quest_index'] as int) + 1).toString(),
                      style: const TextStyle(
                          color: Color.fromARGB(255, 16, 78, 135),
                          fontSize: 15),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          data['questions'] as String,
                          style: GoogleFonts.lato(
                              color: const Color.fromARGB(255, 238, 233, 233),
                              fontSize: 18),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          data['user_ans'] as String,
                          style: GoogleFonts.lato(
                              color: const Color.fromARGB(255, 6, 1, 1),
                              fontSize: 18),
                        ),
                        Text(
                          data['crct_ans'] as String,
                          style: GoogleFonts.lato(
                              color: const Color.fromARGB(255, 82, 178, 14),
                              fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
