import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});
  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("actual questiosn"),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text("answer 1"),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text("answer 2"),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text("answer 3"),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text("answer 4"),
          ),
        ],
      ),
    );
  }
}
