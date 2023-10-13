import 'package:hack_japan/data/repositories/KanjiRepository.dart';
import 'package:hack_japan/models/KanjiModel.dart';

class KanjiViewModel {
  final KanjiRepository _repositories = KanjiRepositoryImpl();
  List<KanjiModel> _kanjiList = [];

  List<KanjiModel> getKanjiList() {
    _kanjiList = _repositories.getKanjiList();
    return _kanjiList;
  }

  List<KanjiModel> searchKanjiList(String keyword) {
    var resultSearch = <KanjiModel>[];
    for (var value in _kanjiList) {
      if (value.word.toUpperCase().contains(keyword.toUpperCase())) {
        resultSearch.add(value);
      }
    }
    return resultSearch;
  }
}
