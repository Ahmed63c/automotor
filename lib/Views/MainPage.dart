import 'package:automotor/Utils/AppLocalization.dart';
import 'package:automotor/Widgets/BottomBar.dart';
import 'package:custom_navigator/custom_scaffold.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Home/AddProduct.dart';
import 'Home/AllCatigoriesHome.dart';
import 'Home/OffersPage.dart';
import 'Home/SearchPage.dart';
import 'Profile/ProfilePage.dart';

class MainPage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MainPage>
    with TickerProviderStateMixin<MainPage>{
  TabController _tabController;
  TabController bottomTabController;
  // Custom navigator takes a global key if you want to access the
  // navigator from outside it's widget tree subtree
  GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
    bottomTabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    // Here's the custom scaffold widget
    // It takes a normal scaffold with mandatory bottom navigation bar
    // and children who are your pages
    return CustomScaffold(
      scaffold: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (_) => AddItem()));

          },
          backgroundColor: Color(0xFFF17532),
          child: Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Colors.grey,
          unselectedFontSize: 10,
          selectedFontSize: 10,
          items:items ,
        ),
      ),

      // Children are the pages that will be shown by every click
      // They should placed in order such as
      // `page 0` will be presented when `item 0` in the [BottomNavigationBar] clicked.
      children: <Widget>[
        home(),
        ProfilePage(),
        ProfilePage(),
        ProfilePage(),
        ProfilePage(),


      ],

      // Called when one of the [items] is tapped.
      onItemTap: (index) {},
    );


  }
  @override
  Widget home() {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 32),
          child: Image.asset('assets/images/smlogo.png'),
          alignment: Alignment.center,
        ),
        Container(
          margin: EdgeInsets.only(left: 16, right: 16, top: 16),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.black54, width: 0.7)),
          child: TextField(
            readOnly: true,
            decoration: InputDecoration(
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 8.0),
              fillColor: Colors.white,
              hintText: AppLocalizations.of(context).translate("search"),
              hintStyle: TextStyle(fontFamily: 'Cairo', fontSize: 14.0),
              prefixIcon: Icon(Icons.search, color: Colors.grey),
              suffixIcon: Container(
                child: Image.asset(
                  "assets/images/jordan-flag-icon-16.png",
                  fit: BoxFit.none,
                ),
              ),
            ),
            onTap: () => Navigator.of(context)
                .push(MaterialPageRoute(builder: (_) => SearchPage())),
          ),
        ),
        Container(
          height: 40,
          child: TabBar(
              controller: _tabController,
              indicatorColor: Colors.transparent,
              labelColor: Colors.orange,
              isScrollable: true,
              labelPadding: EdgeInsets.only(right: 20.0, left: 20),
              unselectedLabelColor: Colors.black,
              tabs: [
                Tab(
                  child: Text(
                      AppLocalizations.of(context).translate("sections"),
                      style: TextStyle(
                          fontFamily: "Cairo",
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold)),
                ),
                Tab(
                  child: Text(AppLocalizations.of(context).translate("offers"),
                      style: TextStyle(
                          fontFamily: "Cairo",
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold)),
                ),
                Tab(
                  child: Text(AppLocalizations.of(context).translate("opinion"),
                      style: TextStyle(
                          fontFamily: "Cairo",
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold)),
                ),
                Tab(
                  child: Text(
                      AppLocalizations.of(context).translate("discounts"),
                      style: TextStyle(
                          fontFamily: "Cairo",
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold)),
                )
              ]),
        ),
        Flexible(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: TabBarView(
              controller: _tabController,
              children: <Widget>[
                AllCategories(),
                OffersPage(),
                AllCategories(),
                AllCategories()
              ],
            ),
          ),
        ),
      ],
    );
  }

 final items=[
  BottomNavigationBarItem(
  icon: Icon(
  Icons.home,
//                color: controller.index == 0 ? selectedColor : unselectedColor,
  ),
  title: Text(
  "الرئيسية",
  ),
  ),
  BottomNavigationBarItem(
  icon: new Stack(
  children: <Widget>[
  Icon(
  Icons.chat,
//                        color: controller.index == 1
//                            ? selectedColor
//                            : unselectedColor
  ),
  Positioned(
  right: 0,
  child: new Container(
  padding: EdgeInsets.all(1),
  decoration: new BoxDecoration(
  color: Colors.red,
  borderRadius: BorderRadius.circular(6),
  ),
  constraints: BoxConstraints(
  minWidth: 12,
  minHeight: 12,
  ),
  child: new Text(
  '99',
  style: new TextStyle(
  color: Colors.white,
  fontSize: 8,
  ),
  textAlign: TextAlign.center,
  ),
  ),
  )
  ],
  ),
  title: new Text(
  "دردشاتي ",
//style: TextStyle(color: Colors.black45),
  )),
  BottomNavigationBarItem(
  icon: new Icon(
  Icons.add,
  ),
  title: new Text(
  "أضف إعلان",
//style: TextStyle(color: Colors.black45),
  )),
  BottomNavigationBarItem(
  icon: Stack(
  children: <Widget>[
  Icon(
  Icons.notifications_active,
//                        color: controller.index == 2
//                            ? selectedColor
//                            : unselectedColor
  ),
  Positioned(
  right: 0,
  child: new Container(
  padding: EdgeInsets.all(1),
  decoration: new BoxDecoration(
  color: Colors.red,
  borderRadius: BorderRadius.circular(6),
  ),
  constraints: BoxConstraints(
  minWidth: 12,
  minHeight: 12,
  ),
  child: new Text(
  '99',
  style: new TextStyle(
  color: Colors.white,
  fontSize: 8,
  ),
  textAlign: TextAlign.center,
  ),
  ),
  )
  ],
  ),
  title: new Text(
  "إشعارات",
//style: TextStyle(color: Colors.black45),
  )),
  BottomNavigationBarItem(
  icon: new Icon(
  Icons.person_outline,
//                    color:  controller.index == 3 ? selectedColor : unselectedColor
  ),
  title: new Text(
  " حسابي",
//style: TextStyle(color: Colors.black45),
  ))
  ];

}