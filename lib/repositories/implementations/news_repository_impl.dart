import 'package:prueba_frontend/data/models/news_response.dart';

import '../../data/services/news_service.dart';
import '../interfaces/news_repository.dart';

class NewsRepositoryImpl implements NewsRepository{
  final NewsService _newsService;

  NewsRepositoryImpl(this._newsService);
  @override
  Future<NewsResponse> getTopHeadlines({String country = 'us'}) async {
    try {
      return await _newsService.fetchNews();
    } catch (e) {
      throw Exception('Repository: Failed to load news: $e');
    }
  }
  
}