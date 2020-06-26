
import 'package:automotor/Utils/AppLocalization.dart';
import 'package:automotor/Views/AllCatigories.dart';
import 'package:automotor/Widgets/BottomBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 32),
                child: Image.asset('assets/images/logo.png'),
                alignment: Alignment.center,
              ),
              Container(
                margin: EdgeInsets.all(16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32)),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.orange)),
                    enabledBorder: OutlineInputBorder(
                      borderRadius:
                      BorderRadius.all(Radius.circular(16)),
                      borderSide:
                      BorderSide(width: 1, color: Colors.black),
                    ),
                    contentPadding: EdgeInsets.only(top: 16.0),
                    fillColor: Colors.white,
                    hintText: AppLocalizations.of(context).translate("search"),
                    hintStyle: TextStyle(fontFamily: 'Cairo', fontSize: 16.0),
                    prefixIcon: Icon(Icons.search, color: Colors.grey),
                  ),
                ),
              ),
              Container(
                height: 30,
                child: TabBar(
                    controller: _tabController,
                    indicatorColor: Colors.transparent,
                    labelColor: Colors.orange,
                    isScrollable: true,
                    labelPadding: EdgeInsets.only(right: 20.0, left: 20),
                    unselectedLabelColor: Colors.black,
                    tabs: [
                      Tab(
                        child: Text(AppLocalizations.of(context).translate("sections"),
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
                        child: Text(AppLocalizations.of(context).translate("discounts"),
                            style: TextStyle(
                                fontFamily: "Cairo",
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold)),
                      )]),
              ),
              Expanded(
                child: Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      child: TabBarView(
                        controller: _tabController,
                        children: <Widget>[
                          AllCategories(),
                          AllCategories(),
                          AllCategories(),
                          AllCategories()
                        ],
                      ),
                    ),
              ),
            ],
          ),


      floatingActionButton: FloatingActionButton(onPressed: () {},
        backgroundColor: Color(0xFFF17532),
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomBar(),
    );
  }
}