import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/integrated_items/app_bar_item.dart' as prefix0;
import 'package:todo_app/tab_items/calendar/calendar_item.dart';
import 'package:todo_app/constants.dart';
import 'package:todo_app/today_tasks_item.dart';
import 'package:todo_app/today_task_model.dart';

Widget myTabsController(Widget child) => DefaultTabController(
  length: 3,
  child: Scaffold(
    appBar: AppBar(
      backgroundColor: AppColors.ORANGE,
      bottom: TabBar(
        indicatorColor: AppColors.GRAY,
        tabs: [
          Tab(icon: Icon(Icons.star)),
          Tab(icon: Icon(Icons.calendar_today)),
          Tab(icon: Icon(Icons.check)),
        ],
      ),
      title: prefix0.appBar,
    ),
    body: TabBarView(
      physics: NeverScrollableScrollPhysics(),
      children: [
        ChangeNotifierProvider(
          create: (_) => new TodayTasksModel(),
          child: child,
        ),
        myCalendar,
        Icon(Icons.check),
      ],
    ),
  ),
);
