import 'package:flutter/widgets.dart';

class QuestionsScreen extends StatefulWidget{
  const QuestionsScreen({super.key});
  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}
class _QuestionsScreenState extends State<QuestionsScreen>{
  @override
  Widget build(BuildContext context) {
    return const Center(child:  Text("Questions Screen"));
  }
}