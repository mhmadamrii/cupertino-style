import 'package:cupertino_style/configs/routes/routes_location.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends ConsumerWidget {
  static HomeScreen builder(BuildContext context, GoRouterState state) {
    return HomeScreen();
  }

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text('Go to to login'),
          onPressed: () => context.push(
            RoutesLocation.login,
          ),
        ),
      ),
    );
  }
}
