import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
            'assets/images/question.png',
            width: 300,
          ),
          const SizedBox(
            height: 80,
          ),
          Text(
            'Ready for IQ Test',
            style: GoogleFonts.lato(
              color:const Color.fromARGB(255, 37, 35, 35),
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
         
          const SizedBox(height: 30),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
                foregroundColor: const Color.fromARGB(255, 95, 86, 121)),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text('Start Quiz'),
          ),
           Text(
            'Created by Eng.Abdullah',
            style: GoogleFonts.lato(
              color:const Color.fromARGB(255, 37, 35, 35),
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
        
      ),
    );
  }
}
