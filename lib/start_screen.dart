import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(191, 255, 255, 255),
          ),
          const SizedBox(height: 30),
          Text(
            'Learn Flutter the Fun Way',
            style: GoogleFonts.aladin(
              fontSize: 25,
              color: const Color.fromARGB(255, 234, 238, 248),
              fontWeight: FontWeight.w500,
              letterSpacing: 1.25,
            ),
          ),
          const SizedBox(height: 40),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            icon: const Icon(Icons.start),
            label: const Text(
              'Start Quiz',
              style: TextStyle(fontSize: 20),
            ),
          )
        ],
      ),
    );
  }
}
