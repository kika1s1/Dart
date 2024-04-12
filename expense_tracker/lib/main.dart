import 'package:flutter/material.dart';
import 'package:expense_tracker/expenses.dart';

void main(){
  runApp(
     MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("expense track"),
        ),
        body: const Expenses(),
      ),

    ),
  )
  ;
}