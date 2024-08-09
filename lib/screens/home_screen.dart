import 'package:cupertino_style/screens/tasks/all_tasks_screen.dart';
import 'package:cupertino_style/screens/user_dashboard_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import '../widgets/modals/add_task_modal.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text(
          "Homepage",
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: GridView.count(
            shrinkWrap: true,
            crossAxisCount: 2,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            childAspectRatio: 0.75,
            children: [
              _buildCard(
                context,
                'All Tasks',
                Colors.blue,
                AllTaskScreen(),
                CupertinoIcons.list_bullet,
              ),
              _buildCard(
                context,
                'Add New Task',
                Colors.red,
                null,
                CupertinoIcons.add,
              ),
              _buildCard(
                context,
                'Completed Tasks',
                Colors.green,
                UserDashboardScreen(),
                CupertinoIcons.check_mark_circled,
              ),
              _buildCard(
                context,
                'Notes',
                Colors.purple,
                UserDashboardScreen(),
                CupertinoIcons.bookmark,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildCard(
  BuildContext context,
  String title,
  Color color,
  Widget? targetScreen,
  IconData icon,
) {
  return GestureDetector(
    onTap: () {
      if (title == 'Add New Task') {
        showCupertinoModalBottomSheet(
            context: context,
            builder: (context) => AddTaskModal(),
            expand: false);
      } else {
        Navigator.push(
          context,
          CupertinoPageRoute(
            builder: (context) => targetScreen!,
          ),
        );
      }
    },
    child: Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: Colors.white,
              size: 40,
            ),
            const SizedBox(
              height: 10.5,
            ),
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16.0,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
