import 'package:flutter/material.dart';
import 'package:todo_app/constants.dart';
import 'package:todo_app/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Rubik'),
      home: StartPage(),
    );
  }
}

class StartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.WHITE,
      body: Column(
        children: <Widget>[
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 100.0),
              child: Text(
                "Welcome To Your \n To Do List",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 35,
                  color: AppColors.GRAY,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 80.0),
            child: InkWell(
              child: Text('Let\'s get started',
                  style: TextStyle(
                    fontSize: 24,
                    color: AppColors.GRAY,
                  )),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
            ),
          )
        ],
      ),
    );
  }
}
