import 'package:cupertino_style/routes/route.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      title: 'Simple Todo App',
      initialRoute: AppRoutes.root,
      onGenerateRoute: AppRoutes.generateRoute,
    );
  }
}
