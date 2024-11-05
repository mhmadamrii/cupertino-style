import 'package:cupertino_style/configs/routes/routes_location.dart';
import 'package:cupertino_style/configs/routes/routes_provider.dart';
import 'package:cupertino_style/screens/home_screen.dart';
import 'package:cupertino_style/screens/login_screen.dart';
import 'package:cupertino_style/screens/todo_screen.dart';
import 'package:go_router/go_router.dart';

// GoRouter configuration
final appRoutes = [
  GoRoute(
    path: RoutesLocation.home,
    parentNavigatorKey: navigationKey,
    builder: (context, state) => HomeScreen(),
  ),
  GoRoute(
    path: RoutesLocation.login,
    parentNavigatorKey: navigationKey,
    builder: (context, state) => LoginScreen(),
  ),
  GoRoute(
    path: RoutesLocation.todo,
    parentNavigatorKey: navigationKey,
    builder: (context, state) => TodoScreen(),
  ),
];
