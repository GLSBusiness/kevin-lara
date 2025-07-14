
import 'package:go_router/go_router.dart';
import '../../data/models/news_response.dart';
import '../../presentation/screens/screens.dart';

final approuter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: NewsScreen.name,
      builder: (context, state) => const NewsScreen(),
    ),
    GoRoute(
      path: '/new-detail',
      name: NewDetailScreen.name,
      builder: (context, state) {
        final article = state.extra as Article?;
        return NewDetailScreen(article: article);
      },
    ),

  ],
);