import 'package:automotor/Views/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'Utils/AppLocalization.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      supportedLocales: [
//        Locale('en', 'US'),
        Locale('ar', ''),
      ],
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      debugShowCheckedModeBanner: false,
      title: "auto motor",
      color: Colors.orange,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xfffefdfd),
        appBarTheme: AppBarTheme(elevation: 0, color: Color(0xfffefdfd)),
        textTheme: TextTheme(title: TextStyle(color: Colors.black)),
        visualDensity: VisualDensity.adaptivePlatformDensity,
          fontFamily: 'Cairo',
          primaryColor: Colors.orange,
          primaryColorDark: Colors.orange,
          primarySwatch: Colors.orange
      ),

      home: MyHomePage(),

    );
  }
}
