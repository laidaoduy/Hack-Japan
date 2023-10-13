import 'package:flutter/material.dart';
import 'package:hack_japan/cores/extentions/StringExtensions.dart';

class TitleTextWidget extends StatelessWidget {
  final String title;
  final String value;
  final TextStyle? valueStyle;
  final double? width;

  const TitleTextWidget({super.key, required this.title, required this.value, this.valueStyle, this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Text.rich(TextSpan(
        children: [
          TextSpan(
            text: title.toColon(),
            style: TextStyle(color: Colors.black, fontStyle: FontStyle.italic),
          ),
          TextSpan(text: value, style: valueStyle),
        ],
      )),
    );
  }
}
