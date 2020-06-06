/*
appfinalproject-flutter - news
created by: stefensuhat at 06 Apr 2020 20.42
*/

import 'package:flutter/material.dart';
import 'package:appfinalproject/ui/constant/constant.dart';
import 'package:appfinalproject/ui/widgets/news_list.dart';

class NewsPage extends StatefulWidget {
  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.amber, //change your color here
        ),
        elevation: 0.0,
        title: const Text('Da'),
        textTheme: TextTheme(
          headline: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
      body: SingleChildScrollView(
          padding: EdgeInsets.all(spacing(2)),
          child: Column(
            children: [0, 1, 2].map((i) {
              return NewsList();
            }).toList(),
          )),
    );
  }
}
