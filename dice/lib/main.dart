import 'package:flutter/material.dart';
import 'package:telebirr/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text("TeleBirr"),
            centerTitle: true,
          ),
          body: const HomePage(
            Color.fromARGB(20, 10, 134, 1),
            Color.fromARGB(20, 130, 10, 1),
          ),
        ));
  }
}
