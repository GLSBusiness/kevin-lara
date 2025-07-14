
import 'package:go_router/go_router.dart';
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
        return const NewDetailScreen();
      },
    ),

  ],
);