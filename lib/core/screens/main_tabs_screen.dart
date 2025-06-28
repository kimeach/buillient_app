import 'package:auto_route/annotations.dart';
import 'package:buillient_app/home/screens/home_screen.dart';
import 'package:buillient_app/news/screens/news_screen.dart';
import 'package:buillient_app/trading/screens/trading_screen.dart';
import 'package:buillient_app/settings/screens/settings_screen.dart';
import 'package:flutter/material.dart';

@RoutePage()
class MainTabsScreen extends StatefulWidget {
  const MainTabsScreen({super.key});

  @override
  State<MainTabsScreen> createState() => _MainTabsScreenState();
}

class _MainTabsScreenState extends State<MainTabsScreen> {
  int _currentIndex = 1;

  final List<Widget> _pages = const [
    NewsScreen(),
    HomeScreen(),
    TradingScreen(),
    SettingsScreen(),
  ];

  void _selectTab(int index) {
    setState(() => _currentIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: () => _selectTab(1),
        backgroundColor: _currentIndex == 1
            ? Theme.of(context).colorScheme.primary
            : null,
        child: const Icon(Icons.home),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 6,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: const Icon(Icons.article),
              color: _currentIndex == 0
                  ? Theme.of(context).colorScheme.primary
                  : null,
              onPressed: () => _selectTab(0),
            ),
            const SizedBox(width: 48),
            IconButton(
              icon: const Icon(Icons.trending_up),
              color: _currentIndex == 2
                  ? Theme.of(context).colorScheme.primary
                  : null,
              onPressed: () => _selectTab(2),
            ),
            IconButton(
              icon: const Icon(Icons.settings),
              color: _currentIndex == 3
                  ? Theme.of(context).colorScheme.primary
                  : null,
              onPressed: () => _selectTab(3),
            ),
          ],
        ),
      ),
    );
  }
}
