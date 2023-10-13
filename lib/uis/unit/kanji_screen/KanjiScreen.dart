import 'package:flutter/material.dart';
import 'package:hack_japan/models/KanjiModel.dart';
import 'package:hack_japan/uis/unit/kanji_screen/KanjiViewModel.dart';
import 'package:hack_japan/uis/unit/kanji_screen/widget/KanjiItemWidget.dart';
import 'package:hack_japan/widgets/ResultSearchEmptyWidget.dart';

class KanjiScreen extends StatefulWidget {
  const KanjiScreen({super.key});

  static get route => MaterialPageRoute(builder: (BuildContext context) => const KanjiScreen());

  @override
  State<KanjiScreen> createState() => _KanjiScreenState();
}

class _KanjiScreenState extends State<KanjiScreen> {
  final KanjiViewModel _viewModel = KanjiViewModel();
  late final ValueNotifier<List<KanjiModel>> _kanjiList;

  @override
  void initState() {
    _kanjiList = ValueNotifier(_viewModel.getKanjiList());
    super.initState();
  }

  @override
  void dispose() {
    _kanjiList.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 10, centerTitle: true, title: Text("Kanji")),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: 4, top: 6, right: 4),
            alignment: Alignment.center,
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: InkWell(
                  onTap: () {},
                  child: Container(child: Icon(Icons.search)),
                ),
                isCollapsed: true,
                contentPadding: EdgeInsets.symmetric(vertical: 10),
                border: OutlineInputBorder(borderSide: BorderSide()),
              ),
              onSubmitted: (text) {
                _kanjiList.value = _viewModel.searchKanjiList(text);
              },
              onChanged: (text) {
                _kanjiList.value = _viewModel.searchKanjiList(text);
              },
            ),
          ),
          Flexible(
            child: SingleChildScrollView(
              padding: EdgeInsets.only(bottom: 16),
              child: ValueListenableBuilder<List<KanjiModel>>(
                  valueListenable: _kanjiList,
                  builder: (_, value, __) {
                    if (value.isEmpty) {
                      return ResultSearchEmptyWidget();
                    }
                    return Column(
                      children: value.map((e) {
                        return KanjiItemWidget(kanjiModel: e);
                      }).toList(),
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}

extension _KanjiScreenStateX on _KanjiScreenState {}
