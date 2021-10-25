import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart' as pathProvider;
import 'package:schhs_app2021/screens/splash_screen.dart';

import 'logic/constants.dart';
import 'med.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Directory directory = await pathProvider.getApplicationDocumentsDirectory();
  Hive.init(directory.path);
  Hive.registerAdapter(EmployeeAdapter());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    double screenWidth = window.physicalSize.width;
    // Size screenSize = MediaQuery.of(context).size;
    //  Orientation orientation = MediaQuery.of(context).orientation;
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Color(0xff405061),
          textTheme: screenWidth < 500 ? TEXT_THEME_SMALL : TEXT_THEME_DEFAULT,
          fontFamily: 'Meta',
          colorScheme:
              ColorScheme.fromSwatch().copyWith(secondary: Colors.white)),
      debugShowCheckedModeBanner: false,
      title: 'My SCHHS',
      color: Colors.white,
      home: Scaffold(
          //  backgroundColor: Colors.white,
          body: Splash1()),
    );
  }
}
