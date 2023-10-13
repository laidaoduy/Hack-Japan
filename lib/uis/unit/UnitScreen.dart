import 'package:flutter/material.dart';
import 'package:hack_japan/uis/unit/word_screen/WordScreen.dart';

import 'kanji_screen/KanjiScreen.dart';

class UnitScreen extends StatefulWidget {
  const UnitScreen({super.key});

  @override
  State<UnitScreen> createState() => _UnitScreenState();
}

class _UnitScreenState extends State<UnitScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        centerTitle: true,
        title: const Text("Unit"),
      ),
      body: Column(
          children: ["Kanji", "Work"].map((e) {
        return InkWell(
          onTap: () {
            if (e == "Kanji") {
              Navigator.push(context, KanjiScreen.route);
            } else {
              Navigator.push(context, WordScreen.route);
            }
          },
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
            decoration: BoxDecoration(
              border: Border.all(),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              children: [Text(e)],
            ),
          ),
        );
      }).toList()),
    );
  }
}
