import 'package:flutter/material.dart';
import 'package:hack_japan/models/KanjiModel.dart';
import 'package:hack_japan/widgets/TitleTextWidget.dart';

class KanjiItemWidget extends StatelessWidget {
  final KanjiModel kanjiModel;

  const KanjiItemWidget({super.key, required this.kanjiModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 8),
      margin: EdgeInsets.only(left: 16, right: 16, top: 16),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.withOpacity(0.8)),
        borderRadius: BorderRadius.all(Radius.circular(6)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(kanjiModel.kanji, style: TextStyle(fontSize: 70, color: Colors.black.withOpacity(0.6))),
          Container(
            margin: EdgeInsets.only(left: 12, right: 8, top: 4, bottom: 4),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TitleTextWidget(
                  title: "Chữ",
                  value: kanjiModel.word.toUpperCase(),
                  valueStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                TitleTextWidget(
                  width: MediaQuery.of(context).size.width - 136,
                  title: "Hack",
                  value: kanjiModel.hack,
                  valueStyle: TextStyle(color: Colors.blue),
                ),
                SizedBox(height: 4),
                TitleTextWidget(
                  title: "Âm On",
                  value: kanjiModel.on,
                  valueStyle: TextStyle(color: Colors.red),
                ),
                TitleTextWidget(
                  title: "Âm Kun",
                  value: kanjiModel.kun,
                  valueStyle: TextStyle(color: Colors.purple),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
