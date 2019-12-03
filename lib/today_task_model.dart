import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TaskModel {
  String text = "";
  bool pressed = false;

  TaskModel(this.text, this.pressed);
}

class TodayTasksModel extends ChangeNotifier {
  List<TaskModel> itemList = [
      TaskModel('First task', false),
    TaskModel('Second Task', false),
    TaskModel('Third task', true),
    TaskModel('Fourth task', true),
    TaskModel('task', false),
    TaskModel('task', false),
    TaskModel('my task', true)
  ];

  void changeState(bool toSet, int index) {
    itemList[index].pressed = toSet;
    notifyListeners();
  }

  void add(String taskName) {
    var item = TaskModel(
      taskName,
      false,
    );
    itemList.add(item);
    notifyListeners();
  }
}
