import 'dart:core' as prefix0;
import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';
import 'package:todo_app/constants.dart';

Widget myCalendar = Container(
  margin: EdgeInsets.symmetric(horizontal: 16.0),
  child: CalendarCarousel(
    thisMonthDayBorderColor: Colors.grey,
    height: 420.0,
    selectedDateTime: DateTime.now(),

    /// null for not rendering any border, true for circular border, false for rectangular border
    daysHaveCircularBorder: true,

    selectedDayButtonColor: AppColors.LIGHT_BLUE,
    selectedDayBorderColor: AppColors.LIGHT_BLUE,

    weekendTextStyle: TextStyle(
      color: Colors.red,
    ),
    headerTextStyle: TextStyle(
      color: AppColors.GRAY,
      fontSize: 15,
    ),
  ),
);
