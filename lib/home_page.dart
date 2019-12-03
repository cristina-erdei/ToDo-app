import 'package:flutter/material.dart';
import 'package:todo_app/tabs/tabs_item.dart';
import 'package:todo_app/today_tasks_item.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: myTabsController(TodayTaskWidget()),
    );
  }
}
