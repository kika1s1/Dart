import 'package:flutter/material.dart';
import 'package:quiz/start_screen.dart';

void main() {
  runApp(const Quiz());
}

class Quiz extends StatelessWidget {
  const Quiz({super.key});
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        
        body:  Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 78, 12, 151),
              Color.fromARGB(255, 107, 15, 168),

            ],
            begin: Alignment.topLeft,
            end:Alignment.bottomRight,
          )),
          child: const StartScreen(),
        ),
      ),
    );
  }
}
