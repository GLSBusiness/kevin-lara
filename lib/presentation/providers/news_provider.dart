import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../data/models/news_response.dart';
import '../../data/services/news_service.dart';
import '../../repositories/implementations/news_repository_impl.dart';
import '../../repositories/interfaces/news_repository.dart';

// Provider para NewsService
final newsServiceProvider = Provider<NewsService>((ref) {
  return NewsService();
});

// Provider para NewsRepository
final newsRepositoryProvider = Provider<NewsRepository>((ref) {
  final newsService = ref.watch(newsServiceProvider);
  return NewsRepositoryImpl(newsService);
});

// Provider para obtener noticias (con caché automático)
final newsProvider = FutureProvider<NewsResponse>((ref) async {
  final repository = ref.watch(newsRepositoryProvider);
  return repository.getTopHeadlines();
});