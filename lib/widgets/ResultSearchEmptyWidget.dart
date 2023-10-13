import 'package:flutter/material.dart';

class ResultSearchEmptyWidget extends StatelessWidget {
  const ResultSearchEmptyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: Text("Empty", style: TextStyle(color: Colors.grey, fontSize: 16)),
    );
  }
}
