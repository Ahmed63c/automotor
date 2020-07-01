import 'package:automotor/Widgets/MyText.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'FaqPage.dart';
import 'Settings.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9F9F9),
      body: SafeArea(
        top: true,
        child: SingleChildScrollView(
          child: Padding(
            padding:
            EdgeInsets.only(left: 16.0, right: 16.0, top: kToolbarHeight),
            child: Column(
              children: <Widget>[
                CircleAvatar(
                  maxRadius: 48,
                  backgroundImage: AssetImage('assets/images/1.jpg'),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "اسم المستخدم",
                    style: TextStyle(fontSize:16,fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: MyText(
                    "signin",
                    style: TextStyle(fontSize:16,fontWeight: FontWeight.bold),
                  ),

                ),
//                Container(
//                  margin: EdgeInsets.symmetric(vertical: 16.0),
//                  decoration: BoxDecoration(
//                      borderRadius: BorderRadius.only(
//                          topLeft: Radius.circular(8),
//                          topRight: Radius.circular(8),
//                          bottomLeft: Radius.circular(8),
//                          bottomRight: Radius.circular(8)),
//                      color: Colors.white,
//                      boxShadow: [
//                        BoxShadow(
//                            color: Colors.yellow,
//                            blurRadius: 4,
//                            spreadRadius: 1,
//                            offset: Offset(0, 1))
//                      ]),
//                  height: 150,
//                  child: Center(
//                    child: Row(
//                      mainAxisAlignment: MainAxisAlignment.spaceAround,
//                      children: <Widget>[
//                        Column(
//                          mainAxisAlignment: MainAxisAlignment.center,
//                          children: <Widget>[
//                            IconButton(
//                              icon: Image.asset('assets/icons/wallet.png'),
//                              onPressed:()=> Navigator.of(context).push(
//                                  MaterialPageRoute(
//                                      builder: (_) => WalletPage())),
//                            ),
//                            Text(
//                              'Wallet',
//                              style: TextStyle(fontWeight: FontWeight.bold),
//                            )
//                          ],
//                        ),
//                        Column(
//                          mainAxisAlignment: MainAxisAlignment.center,
//                          children: <Widget>[
//                            IconButton(
//                              icon: Image.asset('assets/icons/truck.png'),
//                              onPressed: () => Navigator.of(context).push(
//                                  MaterialPageRoute(builder: (_) => TrackingPage())),
//                            ),
//                            Text(
//                              'Shipped',
//                              style: TextStyle(fontWeight: FontWeight.bold),
//                            )
//                          ],
//                        ),
//                        Column(
//                          mainAxisAlignment: MainAxisAlignment.center,
//                          children: <Widget>[
//                            IconButton(
//                              icon: Image.asset('assets/icons/card.png'),
//                              onPressed:()=> Navigator.of(context).push(
//                                  MaterialPageRoute(
//                                      builder: (_) => PaymentPage())),
//                            ),
//                            Text(
//                              'Payment',
//                              style: TextStyle(fontWeight: FontWeight.bold),
//                            )
//                          ],
//                        ),
//                        Column(
//                          mainAxisAlignment: MainAxisAlignment.center,
//                          children: <Widget>[
//                            IconButton(
//                              icon: Image.asset('assets/icons/contact_us.png'), onPressed: () {},
//                            ),
//                            Text(
//                              'Support',
//                              style: TextStyle(fontWeight: FontWeight.bold),
//                            )
//                          ],
//                        ),
//                      ],
//                    ),
//                  ),
//                ),
                ListTile(
                  title: MyText('settings'),
                  subtitle: MyText('settingsdesc'),
                  leading: Image.asset('assets/icons/settings_icon.png', fit: BoxFit.scaleDown, width: 30, height: 30,),
                  trailing: Icon(Icons.chevron_right, color: Colors.orange),
                  onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => SettingsPage())),
                ),
                Divider(),
                ListTile(
                  title: MyText('help'),
                  subtitle: MyText('helpdesc'),
                  leading: Image.asset('assets/icons/support.png'),
                  trailing: Icon(
                    Icons.chevron_right,
                    color: Colors.orange,
                  ),
                ),
                Divider(),
                ListTile(
                  title: MyText('FAQ'),
                  subtitle: MyText('questions'),
                  leading: Image.asset('assets/icons/faq.png'),
                  trailing: Icon(Icons.chevron_right, color: Colors.orange),
                  onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => FaqPage())),
                ),
                Divider(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}