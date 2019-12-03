import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:todo_app/constants.dart';

var now = new DateTime.now();
String formattedDate = DateFormat('dd-MM-yyyy').format(now);

Widget appBar = Container(
  child: Padding(
      padding: const EdgeInsets.only(top: 30.0),
      child: Row(
        children: <Widget>[
          Text(
            '$formattedDate',
            style: TextStyle(
              fontSize: 20,
              color: AppColors.WHITE,
            ),
          ),
          IconButton(
            icon: Icon(
              Icons.settings,
              size: 20,
            ),
            onPressed: () {},
          ),
        ],
      )),
);
