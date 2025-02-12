import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(255, 207, 191, 191),
          ),
          // Opacity(
          //   opacity: 0.6,
          //   child: Image.asset(
          //     'images/quiz-logo.png',
          //     width: 300,
          //   ),
          // ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Learn Flutter the fun way!',
            style: GoogleFonts.lato(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
          SizedBox(height: 30),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            icon: Icon(
              Icons.arrow_right_alt,
              color: Colors.white,
            ),
            label: Text('Start Quiz'),
          )
        ],
      ),
    );
  }
}
