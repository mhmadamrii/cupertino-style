import 'package:cupertino_style/screens/login_screen.dart';
import 'package:cupertino_style/screens/main_screen.dart';
import 'package:cupertino_style/screens/tasks/all_tasks_screen.dart';
import 'package:flutter/cupertino.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      routes: {
        '/': (_) => LoginScreen(),
        '/home': (_) => MainScreen(),
        '/all-task': (_) => AllTaskScreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
