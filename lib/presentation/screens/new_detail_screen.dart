import 'package:flutter/material.dart';

import '../../data/models/news_response.dart';
import '../widgets/widgets.dart';

class NewDetailScreen extends StatelessWidget {
  static const String name = 'new-detail-screen';
  final Article? article;
  const NewDetailScreen({super.key, this.article});

  @override
  Widget build(BuildContext context) {
    if (article == null) {
      return const ArticleNotAvailableWidget();
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: article!.urlToImage != null &&
                        article!.urlToImage!.isNotEmpty
                    ? Image.network(
                        article!.urlToImage!,
                        height: 200,
                        width: double.infinity,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return const ImageNotSupportedWidget();
                        },
                      )
                    : const ImageNotSupportedWidget(),
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Título del artículo
                  Text(
                    article!.title,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      height: 1.3,
                    ),
                  ),

                  const SizedBox(height: 12),

                  // Información del autor y fecha
                  Row(
                    children: [
                      const Text(
                        'By ',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.blue,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        article!.author ?? 'Unknown Author',
                        style: const TextStyle(
                          fontSize: 12,
                          color: Colors.blue,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),

                  // Contenido del artículo
                  Text(
                    article!.description != null &&
                            article!.description!.isNotEmpty
                        ? article!.description!
                        : article!.content ??
                            'Oops, sorry! Something wrong with de article content. Try it later.',
                    style: TextStyle(
                      fontSize: 16,
                      height: 1.6,
                      color: Colors.grey[700],
                    ),
                  ),
                  const SizedBox(height: 32),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
