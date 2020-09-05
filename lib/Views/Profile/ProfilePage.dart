import 'package:automotor/Utils/Constant.dart';
import 'package:automotor/Utils/SharedPrefrence.dart';
import 'package:automotor/ViewModels/LoginViewModel.dart';
import 'package:automotor/Views/Home/AddProduct.dart';
import 'package:automotor/Views/Profile/LoginScreen.dart';
import 'package:automotor/Widgets/BottomBar.dart';
import 'package:automotor/Widgets/MyText.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'FaqPage.dart';
import 'Settings.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  String userName="";
  @override
  void initState() {
    super.initState();

  }
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
                  backgroundImage: AssetImage('assets/images/profile_placeholder.png'),
                ),
                userNameView(),
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (_) => AddItem()));

        },
        backgroundColor: Color(0xFFF17532),
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomBar(index: 4,),
    );
  }

  Widget userNameView() {
    StorageUtil.getInstance().then((storage){
    setState(() {
      userName=StorageUtil.getString(Constant.USER_NAME);
    });}
    );
     return userName==""?
      GestureDetector(
        onTap: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (_)=>
              ChangeNotifierProvider(
                create: (context)=>LoginViewModel(),
                child: Login(),
              )));
        }
        ,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: MyText(
            "signin",
            style: TextStyle(fontSize:16,fontWeight: FontWeight.bold),
          ),

        ),
      ):Text(
        userName,
        style: TextStyle(fontSize:16,fontWeight: FontWeight.bold,fontFamily: "Cairo"),
      );
  }
}