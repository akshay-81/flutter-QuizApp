import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 450,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 30,
                    height: 30,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: data['user_answer'] == data['correct_answer']
                          ? const Color.fromARGB(231, 125, 231, 128)
                          : const Color.fromARGB(235, 232, 124, 116),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Text(
                      ((data['question_index'] as int) + 1).toString(),
                      style: GoogleFonts.aladin(
                          fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          data['question'] as String,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          data['user_answer'] as String,
                          style: const TextStyle(
                              color: Color.fromARGB(216, 255, 255, 255),
                              fontSize: 15,
                              fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(height: 3),
                        Text(
                          data['correct_answer'] as String,
                          style: const TextStyle(
                              color: Color.fromARGB(243, 48, 243, 90),
                              fontSize: 15,
                              fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(height: 10),
                      ],
                    ),
                  )
                ],
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
