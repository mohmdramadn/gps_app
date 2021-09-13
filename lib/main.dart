import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gps_app/Modules/HomeModule/Views/HomeScreen.dart';
import 'package:gps_app/Modules/LoginModule/Views/LoginScreen.dart';
import 'package:gps_app/Modules/UserModule/Views/UserProfileScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360.0, 592.0),
      builder: () => MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: UserProfileScreen(),
        routes: {
          'login': (context) => LoginScreen(),
          'home': (context) => HomeScreen(),
          'profile': (context) => UserProfileScreen(),
        },
      ),
    );
  }
}

