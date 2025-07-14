import 'package:flutter/material.dart';

class ArticleNotAvailableWidget extends StatelessWidget {
  const ArticleNotAvailableWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.article, size: 100, color: Colors.grey),
            SizedBox(height: 20),
            Text(
              'Article not available',
              style: TextStyle(fontSize: 24, color: Colors.black54),
            ),
          ],
        ),
      ),
    );
  }
}
