
import 'package:automotor/Views/Profile/EditProfile.dart';
import 'package:automotor/Widgets/MyText.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'ChangeLanguagePage.dart';
import 'ChangePasswordPage.dart';
import 'LegalAboutPage.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          brightness: Brightness.light,
          backgroundColor: Colors.white,
          title: MyText(
            'settings',
            style: TextStyle(color: Colors.black),
          ),
          elevation: 15,
        ),
        body: SafeArea(
          bottom: true,
          child: LayoutBuilder(
              builder:(builder,constraints)=> SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(minHeight: constraints.maxHeight),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 24.0, left: 24.0, right: 24.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: MyText(
                            'general',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0),
                          ),
                        ),
                        Divider(
                          color: Colors.grey,
                          height: 4,
                          thickness: 1,
                          indent: 0,
                          endIndent: 0,
                        ),
                        ListTile(
                          title: MyText('language'),
                          leading: Image.asset('assets/icons/language.png'),
                          onTap: () => Navigator.of(context).push(
                              MaterialPageRoute(builder: (_) => ChangeLanguagePage())),
                        ),
                        ListTile(
                          title: MyText('change country'),
                          leading: Image.asset('assets/icons/country.png'),
                          onTap:(){}
//                              () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => ChangeCountryPage())),
                        ),
                        ListTile(
                          title: MyText('notification'),
                          leading: Image.asset('assets/icons/notifications.png'),
                          onTap: () => {}
//                              Navigator.of(context).push(
//                              MaterialPageRoute(builder: (_) => NotificationSettingsPage())),
                        ),
                        ListTile(
                          title: MyText('legal'),
                          leading: Image.asset('assets/icons/legal.png'),
                          onTap: () => Navigator.of(context).push(
                              MaterialPageRoute(builder: (_) => LegalAboutPage())),
                        ),
                        ListTile(
                          title: MyText('about'),
                          leading: Image.asset('assets/icons/about_us.png'),
                          onTap: (){},
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                          child: MyText(
                            'account',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0),
                          ),
                        ),
                        Divider(
                          color: Colors.grey,
                          height: 16,
                          thickness: 0,
                          indent: 0,
                          endIndent: 0,
                        ),
                        ListTile(
                          title: MyText('change pass'),
                          leading: Image.asset('assets/icons/change_pass.png'),
                          onTap: () => Navigator.of(context).push(
                              MaterialPageRoute(builder: (_) => ChangePasswordPage())),
                        ),
                        ListTile(
                          title: MyText('signout'),
                          leading: Image.asset('assets/icons/sign_out.png'),
//                          onTap: () => Navigator.of(context).push(
//                              MaterialPageRoute(builder: (_) => WelcomeBackPage())),
                        ),
                        ListTile(
                          title: MyText('edit profile'),
                          leading: Image.asset('assets/icons/sign_out.png'),
                          onTap: () => Navigator.of(context).push(
                              MaterialPageRoute(builder: (_) => EditProfile())),
                        ),

                      ],
                    ),
                  ),
                ),
              )
          ),
        ),
    );
  }
}
