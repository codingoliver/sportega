import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sportega/ui/components/article/news_headline_list.dart';
import 'package:sportega/ui/components/article/news_list.dart';
import 'package:sportega/ui/components/article/trending_header.dart';
import 'package:sportega/ui/components/text_header.dart';
import 'package:sportega/ui/holders/news.dart';
import 'package:sportega/ui/pages/article_page.dart';

class ArticleTab extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ArticleTabState();
}

class _ArticleTabState extends State<ArticleTab> {
  List<News> newsList = [
    News(
        image: 'assets/images/rooney.png',
        title: 'Why Rooney is the best forward ever at Manchester United',
        category: 'bbc-sport',
        datetime: 'Jun 17, 2019, 12:44 IST',
        content:
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
    News(
        image: 'assets/images/drogba.jpg',
        title:
            'Why Didier Drogba could be a better chelsea manager than Lampard',
        category: 'bbc-sport',
        datetime: 'Jun 17, 2019, 12:44 IST',
        content:
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
    News(
        image: 'assets/images/rooney.png',
        title: 'Why Rooney is the best forward ever at Manchester United',
        category: 'bbc-sport',
        datetime: 'Jun 17, 2019, 12:44 IST',
        content:
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextHeader(
          title: 'Top Stories',
          subTitle: 'Today, Sep 3rd, Tuesday',
        ),
        NewsHeadlineList(
          newsList: this.newsList,
          onItemSelected: (position) => this._navigateToArticlePage(position),
        ),
        TrendingHeader(
          title: 'Trending',
        ),
        NewsList(
          newsList: this.newsList,
          onNewsItemClicked: (position) =>
              this._navigateToArticlePage(position),
          onNewsItemFavoriteIconClicked: (position) =>
              this._navigateToArticlePage(position),
        )
      ],
    );
  }

  void _navigateToArticlePage(position) {
    Future.delayed(const Duration(seconds: 4), () {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  ArticlePage(news: this.newsList[position])));
    });
  }
}
