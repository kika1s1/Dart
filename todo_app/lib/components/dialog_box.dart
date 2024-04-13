import 'package:flutter/material.dart';
import 'package:todo_app/components/my_button.dart';

class DialogBox extends StatelessWidget {
   DialogBox({super.key, required this.controller, required this.onSave, required this.onCancel});
  VoidCallback onCancel;
  VoidCallback onSave;
  final controller;


  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.green[200],
      content: Container(
        height: 120,
        child:  Column(
          
          children: [
             TextField(
              controller: controller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText:  "Add Tasks",
                label: Text("Task Name"),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyButton(text: "cancel", onPressed: onCancel,),
                const SizedBox(
                  height: 3,
                ),
                MyButton(text: "save", onPressed: onSave),
              ],
            )
            
          ],
        ),
      ),
      
    );
  }
}
