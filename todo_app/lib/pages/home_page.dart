

import 'package:flutter/material.dart';
import 'package:todo_app/components/dialog_box.dart';
import 'package:todo_app/components/todo_tile.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  
  List<List> toDoList = [["Task 1", true], ["Task 2", false], ["Task 3", false]];
  final _controller = TextEditingController();
  void checkedBoxChanged(value, index){
    setState(() {
      toDoList[index][1] = !toDoList[index][1];
    });
  }
  void saveNewTask(){
    setState(() {
      toDoList.add([_controller.text, false]);
      _controller.clear();
    });
    Navigator.of(context).pop();
  }
  void createNewTask() {
     showDialog(context: context,
      builder: (BuildContext context) {
        return DialogBox(
          controller: _controller,
          onSave: saveNewTask,
          onCancel: ()=>Navigator.of(context).pop(),
        );
      },
    );
      
    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[300],
      appBar: AppBar(
        title: const Text("To-Do"),
        centerTitle: true,
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: createNewTask,
        child: const Icon(Icons.add),
      ),
      body: ListView.builder(
        itemCount: toDoList.length,
        itemBuilder: (context, index) {
          return ToDoTile(
            taskName: toDoList[index][0],
            taskCompleted: toDoList[index][1],
            onChanged: (value)=>checkedBoxChanged(value, index),
            
          );
        },
      ),
    );
  }
}
