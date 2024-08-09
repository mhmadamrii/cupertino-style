import 'package:cupertino_style/screens/add_todo_screen.dart';
import 'package:cupertino_style/screens/home_screen.dart';
import 'package:flutter/cupertino.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.house_alt),
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.add_circled),
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person),
          ),
        ],
      ),
      tabBuilder: (BuildContext context, int index) {
        switch (index) {
          case 0:
            return CupertinoTabView(
              builder: (context) => HomeScreen(),
            );
          case 1:
            return CupertinoTabView(
              builder: (context) => AddTodoScreen(),
            );
          case 2:
            return CupertinoTabView(
              builder: (context) => Center(
                child: Text('List Todo Screen'),
              ),
            );
          default:
            return CupertinoTabView(
              builder: (context) => Center(
                child: Text('Home Screen'),
              ),
            );
        }
      },
    );
  }
}
