import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> articles = [
      {
        'title': 'Flutter 4 출시',
        'description': '새로운 기능과 개선 사항이 포함된 Flutter 4가 공개되었습니다.',
      },
      {
        'title': '개발자 컨퍼런스 2024 개최',
        'description': '전 세계 개발자들이 모여 크로스 플랫폼 앱의 미래를 논의합니다.',
      },
      {
        'title': 'AI 기술의 진화',
        'description': '인공지능이 생활 곳곳에 적용되며 빠르게 발전하고 있습니다.',
      },
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('홈 화면')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text(
            '최신 뉴스',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 8),
          Card(
            color: Theme.of(context).colorScheme.primaryContainer,
            child: ListTile(
              title: Text(articles.first['title']!),
              subtitle: Text(articles.first['description']!),
            ),
          ),
          const SizedBox(height: 24),
          Text(
            '다른 뉴스',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(height: 8),
          ...articles.skip(1).map(
            (article) => Card(
              child: ListTile(
                title: Text(article['title']!),
                subtitle: Text(article['description']!),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
