import 'package:flutter_test/flutter_test.dart';
import 'package:sportega/database/news/news_model.dart';
import 'package:sportega/ui/holders/news.dart';

void main() {
  NewsModel newsModel;

  group('News Model Test', () {
    setUp(() async {
      newsModel = await NewsModel.getInstance();
    });

    test('Insert NewsModel Test', () async {
      // get current size of data
      List<News> newsList = await newsModel.getAllNews();
      int newsListSize = newsList.length;

      // construct news object
      News news = News(
          title: 'Title $newsListSize',
          image: 'Image $newsListSize',
          category: 'Category $newsListSize',
          content: 'Content $newsListSize',
          url: 'URL $newsListSize',
          datetime: 'Datetime $newsListSize');

      // insert news
      newsModel.insertNews(news);

      // obtain new size of data
      List<News> updatedNewsList = await newsModel.getAllNews();
      int updatedNewsListSize = updatedNewsList.length;

      // check if insertion was done
      expect(updatedNewsListSize, greaterThan(newsListSize));
    });

    tearDown(() {
      newsModel = null;
    });
  });
}
