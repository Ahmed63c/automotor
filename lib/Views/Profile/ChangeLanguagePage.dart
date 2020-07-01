import 'package:automotor/Widgets/MyText.dart';
import 'package:flutter/material.dart';

class ChangeLanguagePage extends StatefulWidget {
  @override
  _ChangeCountryPageState createState() => _ChangeCountryPageState();
}

class _ChangeCountryPageState extends State<ChangeLanguagePage> {
  List<String> languages = [
    'العربيه',
  ];

  String currentLanguage = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        brightness: Brightness.light,
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        backgroundColor: Colors.transparent,
        title: MyText(
          'settings',
          style: TextStyle(color: Colors.black54),
        ),
        elevation: 0,
      ),
      body: SafeArea(
        bottom: true,
        child: Padding(
          padding: const EdgeInsets.only(top: 24.0, left: 24.0, right: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: MyText(
                  'language',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0),
                ),
              ),
              Flexible(
                child: ListView(
                  children: languages
                      .map((l) => ListTile(
                    onTap: () {
                      setState(() {
                        currentLanguage = l;
                      });
                    },
                    title: Text(
                      l,
                      style: TextStyle(fontSize: 14),
                    ),
                    trailing: l == currentLanguage
                        ? Icon(
                      Icons.check_circle,
                      color: Colors.orange,
                      size: 16,
                    )
                        : SizedBox(),
                  ))
                      .toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
