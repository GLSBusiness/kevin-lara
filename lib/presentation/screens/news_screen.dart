import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/news_provider.dart';
import '../widgets/widgets.dart';

class NewsScreen extends ConsumerWidget {
  static const String name = 'news-screen';
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final newsAsync = ref.watch(newsProvider);

    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: RefreshIndicator(
        onRefresh: () => ref.refresh(newsProvider.future),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 24.0),
          child: newsAsync.when(
            data: (newsResponse) => NewsListWidget(articles: newsResponse.articles),
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (error, stackTrace) =>
                OnLoadErrorWidget(error: error, ref: ref),
          ),
        ),
      ),
    );
  }
}
