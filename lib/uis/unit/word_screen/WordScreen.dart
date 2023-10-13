import 'package:flutter/material.dart';

class WordScreen extends StatefulWidget {
  const WordScreen({super.key});

  static get route => MaterialPageRoute(builder: (BuildContext context) => const WordScreen());

  @override
  State<WordScreen> createState() => _WordScreenState();
}

class _WordScreenState extends State<WordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        centerTitle: true,
        title: Text("Word"),
      ),
    );
  }
}
