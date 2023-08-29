import 'package:flutter/cupertino.dart';

import '../model/article.dart';

class ArticleViewModel extends ChangeNotifier {
  final _articles = [...defaultArticles];
  bool _displayedRead = false;

  List get articles => _articles.where((element) => element.read == _displayedRead).toList();
  bool get displayRead => _displayedRead;

  Article getById(int id) {
    return _articles.firstWhere((article) => article.id == id);

  }

  void addArticle(Article article) {
    _articles.add(article);
    notifyListeners();
  }

  void deleteArticle(int id) {
    _articles.removeWhere((element) => (element.id == id));
    notifyListeners();
  }

  void switchRead(int id){
    Article article = getById(id);
    article.read = !article.read;
    notifyListeners();
  }

  void switchDisplayRead(){
    _displayedRead = !displayRead;
    notifyListeners();
  }



}