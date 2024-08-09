import 'package:flutter/cupertino.dart';

class AllTaskScreen extends StatelessWidget {
  const AllTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(
          "All Tasks",
        ),
      ),
      child: Center(
        child: Text(
          "All Tasks",
        ),
      ),
    );
  }
}
