import 'dart:core';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/constants.dart';
import 'package:todo_app/today_task_model.dart';

class TodayTaskWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Text(
              'Today\'s tasks:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: AppColors.GRAY,
                letterSpacing: 2.0,
              ),
            ),
          ),
        ),
        Consumer<TodayTasksModel>(
          builder: (context, tasks, child) {
            Widget makeItem(TaskModel data) => Row(
              children: <Widget>[
                Expanded(child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(data.text),
                )),
                Checkbox(
                  onChanged: (bool value) {
                    tasks.changeState(value, tasks.itemList.indexOf(data));
                  },
                  value: data.pressed,
                )
              ],
            );

            var remainingTasks =
            tasks.itemList.where((item) => item.pressed == false);

            var finishedTasks = tasks.itemList.where((item) => item.pressed == true);

            var remainingTasksItems = remainingTasks.map((task) => makeItem(task)).toList();
            var finishedTasksItems = finishedTasks.map((task) => makeItem(task)).toList();

            return Column(
              children: <Widget>[
                ExpansionTile(
                  title: Text(
                    'Remaining tasks',
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 20,
                      color: AppColors.GRAY,
                    ),
                  ),
                  children: remainingTasksItems,
                ),
                ExpansionTile(
                  title: Text(
                    'Finished tasks',
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 20,
                      color: AppColors.GRAY,
                    ),
                  ),
                  children: finishedTasksItems,
                ),
              ],
            );
          },
        ),
      ],
    );
  }
}
