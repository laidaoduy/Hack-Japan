import 'package:hack_japan/data/kanji_data/KanjiData.dart';
import 'package:hack_japan/models/KanjiModel.dart';

abstract class KanjiRepository {
  List<KanjiModel> getKanjiList();
}

class KanjiRepositoryImpl extends KanjiRepository {
  @override
  List<KanjiModel> getKanjiList() {
    return KanjiData.data;
  }
}
