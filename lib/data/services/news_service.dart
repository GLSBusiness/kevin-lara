
import 'package:prueba_frontend/data/services/dio_client.dart';
import '../../config/constants/enviroment.dart';
import '../models/news_response.dart';

class NewsService {
  
  // Obtencion de noticias
  Future<NewsResponse> fetchNews() async {
    try {
      final response = await DioClient().dio.get(
        '/top-headlines',
        queryParameters: {
          'country': 'us',
          'apiKey': Enviroment.apiKey,
        },
      );
      return NewsResponse.fromJson(response.data);
    } catch (e) {
      throw Exception('Failed to load news: $e');
    }
  }
}