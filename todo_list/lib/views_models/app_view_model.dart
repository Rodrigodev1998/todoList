import 'package:flutter/material.dart';
import 'package:todo_list/models/user_model.dart';

import '../models/task_model.dart';

class AppViewModel extends ChangeNotifier{
  List<Task> tasks = <Task> [];
  User user = User("Rodrigueira");

  Color clrLvl1 = Colors.grey.shade50;
  Color clrLvl2 = Colors.grey.shade200;
  Color clrLvl3 = Colors.grey.shade800;
  Color clrLvl4 = Colors.grey.shade900;

  int get numTasks => tasks.length;

  void addTask(Task newTask){
    tasks.add(newTask);
    notifyListeners();
  }

  bool getTaskValue(int taskIndex){
    return tasks[taskIndex].complete;
  }

  String getTaskTitle(int taskIndex) {
    return tasks[taskIndex].title;
  }

  void deleteTask(int taskIndex) {
    tasks.removeAt(taskIndex);
    notifyListeners();
  }

  void setTaskValue(int taskIndex, bool taskValue) {
    tasks[taskIndex].complete = taskValue;
    notifyListeners();
  }

  void buttomSheetBuilder(Widget bottoSheetView, BuildContext context){
    showModalBottomSheet(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        context: context, 
        builder: ((context) {
      return bottoSheetView;
    } ));
  }
}