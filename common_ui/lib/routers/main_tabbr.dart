import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MainTabbr extends StatefulWidget {
  final Widget child;

  const MainTabbr({super.key, required this.child});

  @override
  State<MainTabbr> createState() => _MainTabbrState();
}

class _MainTabbrState extends State<MainTabbr> {

  int _locationToTabIndex(String location) {
    final index = tabs.indexWhere((t) => location.startsWith(t.routerPath));
    return index < 0 ? 0 : index;
  }

  int get _currentIndex =>
      _locationToTabIndex(GoRouterState.of(context).uri.toString());

  final List<MainTabBarItem>tabs = <MainTabBarItem>[
    MainTabBarItem(routerPath: '/home',
        label: "首页",
        icon: Icon(Icons.home),
        activeIcon: Icon(Icons.home)),
    MainTabBarItem(routerPath: '/project',
        label: '项目',
        icon: Icon(Icons.developer_board),
        activeIcon: Icon(Icons.developer_board)),
    MainTabBarItem(routerPath: '/square',
        label: '广场',
        icon: Icon(Icons.list_alt),
        activeIcon: Icon(Icons.list_alt)),
    MainTabBarItem(routerPath: '/profile',
        label: '我的',
        icon: Icon(Icons.person),
        activeIcon: Icon(Icons.person)),
  ];

  void _onItemTapped(BuildContext context, int tabIndex) {
    if (tabIndex != _currentIndex) {
      context.go(tabs[tabIndex].routerPath);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: widget.child),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: tabs,
        onTap: (index) => _onItemTapped(context, index),
        unselectedFontSize: 10,
        selectedFontSize: 10,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color(0xFF3C3A35),
      ),
    );
  }
}

class MainTabBarItem extends BottomNavigationBarItem {
  const MainTabBarItem(
      {required this.routerPath,
      required super.icon,
      required Widget super.activeIcon,
      super.label});

  final String routerPath;
}
