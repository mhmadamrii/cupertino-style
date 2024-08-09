import 'package:flutter/cupertino.dart';

class UserDashboardScreen extends StatelessWidget {
  const UserDashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(
          "User dashboard",
        ),
      ),
      child: Center(
        child: Text(
          'Hello world',
        ),
      ),
    );
  }
}
