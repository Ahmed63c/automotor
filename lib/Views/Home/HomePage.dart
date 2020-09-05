import 'package:automotor/Utils/AppLocalization.dart';
import 'package:automotor/Views/Home/AddProduct.dart';
import 'file:///D:/crossProjects/automotor/lib/Views/Home/AllCatigoriesHome.dart';
import 'file:///D:/crossProjects/automotor/lib/Views/Home/OffersPage.dart';
import 'package:automotor/Views/Profile/ProfilePage.dart';
import 'file:///D:/crossProjects/automotor/lib/Views/Home/SearchPage.dart';
import 'package:automotor/Widgets/BottomBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with TickerProviderStateMixin<MyHomePage> {
  TabController _tabController;
  TabController bottomTabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
    bottomTabController = TabController(length: 4, vsync: this);
  }


  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        body: home(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (_) => AddItem()));

        },
        backgroundColor: Color(0xFFF17532),
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomBar(index: 0,),
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
          child:
          TextField(
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
}
