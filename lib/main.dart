import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:lavender_1/custom_order/view.dart';
import 'package:lavender_1/latest_blog/view.dart';
import 'package:resize/resize.dart';

import 'customdrawer.dart';
import 'home/view.dart';
import 'read_me/view.dart';
import 'splash/view.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Resize(
      allowtextScaling: true,
      size: const Size(411,823),
      builder : () {
        return GetMaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            // This is the theme of your application.
            //
            // Try running your application with "flutter run". You'll see the
            // application has a blue toolbar. Then, without quitting the app, try
            // changing the primarySwatch below to Colors.green and then invoke
            // "hot reload" (press "r" in the console where you ran "flutter run",
            // or simply save your changes to "hot reload" in a Flutter IDE).
            // Notice that the counter didn't reset back to zero; the application
            // is not restarted.
            primarySwatch: Colors.grey,
          ),
          home:  SplashPage(),
          debugShowCheckedModeBanner: false,
        );
      }
    );
    }
  }


