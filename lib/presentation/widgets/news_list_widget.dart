import 'package:flutter/material.dart';

import '../../data/models/news_response.dart';
import 'widgets.dart';

class NewsListWidget extends StatelessWidget {
  final List<Article> articles;
  const NewsListWidget({
    super.key,
    required this.articles,
  });

  @override
  Widget build(BuildContext context) {
    if (articles.isEmpty) {
      return const Center(
          child: Padding(
        padding: EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.newspaper, size: 64, color: Colors.grey),
            SizedBox(height: 16),
            Text(
              'No news available',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 16),
            Text(
              'Try it with a different country',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ));
    }

    return ListView.builder(
      padding: const EdgeInsets.all(24.0),
      itemCount: articles.length,
      itemBuilder: (context, index) {
        final article = articles[index];
        return NewsCardWidget(article: article, context: context);
      },
    );
  }
}
