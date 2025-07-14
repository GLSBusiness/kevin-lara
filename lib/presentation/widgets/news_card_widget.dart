import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../data/models/news_response.dart';

class NewsCardWidget extends StatelessWidget {
  final Article article;
  final BuildContext context;
  const NewsCardWidget({super.key, required this.article, required this.context});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.only(bottom: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: GestureDetector(
        onTap: () => context.push('/new-detail', extra: article),
        child: ListTile(
          contentPadding: const EdgeInsets.all(16.0),
          title: Text(
            article.title,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          subtitle: article.description != null && article.description!.isNotEmpty
              ? Text(
                  article.description!,
                  style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                )
              : Text(
                  'Oops! Sorry, but we couldn\'t find a description for this news article.',
                  style: TextStyle(fontSize: 14, color: Colors.grey[500]),
                ),
        ), 
      ),
    );
  }
}