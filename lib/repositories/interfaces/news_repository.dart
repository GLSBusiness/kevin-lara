import '../../data/models/news_response.dart';

abstract class NewsRepository {
  Future<NewsResponse> getTopHeadlines({String country = 'us'});
}