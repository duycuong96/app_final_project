import 'package:flutter/material.dart';
import 'package:appfinalproject/config/routes/routes.dart';
import 'package:appfinalproject/ui/constant/constant.dart';

class AppBeeHair extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appName,
      debugShowCheckedModeBanner: false,
      initialRoute: splashPage,
      onGenerateRoute: Routes().onGenerateRoute,
      theme: ThemeData(
        brightness: Brightness.light,
        fontFamily: 'Poppins',
        primaryColor: Colors.indigo,
      ),
    );
  }
}