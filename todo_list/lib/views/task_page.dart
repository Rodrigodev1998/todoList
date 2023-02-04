import 'package:flutter/material.dart';
import 'package:todo_list/views/add_task_view.dart';
import 'package:todo_list/views/task_list_view.dart';

class TaskPage extends StatelessWidget {
  const TaskPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            //navbar
            Expanded(flex:1, child: Container(color: Colors.red)),
            //info view
            Expanded(flex:1, child: Container(color: Colors.blue)),
            //list task
            Expanded(flex:7, child: TaskListView()),
          ],
        ),
      ),
      floatingActionButton: const AddTaskView());
  }
}
