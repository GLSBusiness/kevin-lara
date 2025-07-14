import 'package:flutter/material.dart';

import '../../data/models/news_response.dart';

void precacheImages(BuildContext context, List<Article> articles) {
  for (final article in articles) {
    if (article.urlToImage != null && article.urlToImage!.isNotEmpty) {
      // Pre-carga la imagen en caché de Flutter
      precacheImage(
        NetworkImage(article.urlToImage!),
        context,
      );
    }
  }
}
