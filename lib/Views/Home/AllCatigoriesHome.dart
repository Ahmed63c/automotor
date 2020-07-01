import 'package:automotor/Utils/AppLocalization.dart';
import 'package:automotor/Views/Home/ProductPage.dart';
import 'package:automotor/Widgets/HomeGrid.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AllCategories extends StatefulWidget {
  @override
  Categories createState() => Categories();
}

class Categories extends State<AllCategories> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
//    final List<Image> images1 = [
//      Image.asset(
//        'assets/images/1.jpg',
//        fit: BoxFit.fill,
//      ),
//      Image.asset(
//        'assets/images/2.jpg',
//        fit: BoxFit.fill,
//      ),
//      Image.asset(
//        'assets/images/3.jpg',
//        fit: BoxFit.fill,
//      ),
//      Image.asset(
//        'assets/images/4.jpg',
//        fit: BoxFit.fill,
//      ),
//      Image.asset(
//        'assets/images/5.jpg',
//        fit: BoxFit.fill,
//      ),
//      Image.asset(
//        'assets/images/6.jpg',
//        fit: BoxFit.fill,
//      ),
//      Image.asset(
//        'assets/images/7.jpg',
//        fit: BoxFit.fill,
//      ),
//    ];
//
//    List<String> footer = [
//      AppLocalizations.of(context).translate("cars for sale"),
//      AppLocalizations.of(context).translate("free customs cars"),
//      AppLocalizations.of(context).translate("cars and applications"),
//      AppLocalizations.of(context).translate("motorcycles"),
//      AppLocalizations.of(context).translate("vans"),
//      AppLocalizations.of(context).translate("heavy machines"),
//      AppLocalizations.of(context).translate("buses")
//    ];
//
//    final List<Image> images2 = [
//      Image.asset(
//        'assets/images/8.jpg',
//        fit: BoxFit.fill,
//      ),
//      Image.asset(
//        'assets/images/9.jpg',
//        fit: BoxFit.fill,
//      )
//    ];
//
//    List<String> footer2 = [
//      AppLocalizations.of(context).translate("cars for rent"),
//      AppLocalizations.of(context).translate("showrooms for rent"),
//    ];
//
//    final List<Image> images3 = [
//      Image.asset(
//        'assets/images/10.jpg',
//        fit: BoxFit.fill,
//      ),
//      Image.asset(
//        'assets/images/11.jpg',
//        fit: BoxFit.fill,
//      ),
//      Image.asset(
//        'assets/images/12.jpg',
//        fit: BoxFit.fill,
//      ),
//      Image.asset(
//        'assets/images/13.jpg',
//        fit: BoxFit.fill,
//      ),
//      Image.asset(
//        'assets/images/14.jpg',
//        fit: BoxFit.fill,
//      )
//    ];
//
//    List<String> footer3 = [
//      AppLocalizations.of(context).translate("accessories"),
//      AppLocalizations.of(context).translate("accessories shop"),
//      AppLocalizations.of(context).translate("spare parts"),
//      AppLocalizations.of(context).translate("spare parts shop"),
//      AppLocalizations.of(context).translate("tires")
//    ];
//
//    final List<Image> images4 = [
//      Image.asset(
//        'assets/images/15.jpg',
//        fit: BoxFit.fill,
//      ),
//      Image.asset(
//        'assets/images/16.jpg',
//        fit: BoxFit.fill,
//      )
//    ];
//
//    List<String> footer4 = [
//      AppLocalizations.of(context).translate("agencies"),
//      AppLocalizations.of(context).translate("cars showrooms"),
//    ];

    return ListView(
      physics: const AlwaysScrollableScrollPhysics(),
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 16, right: 16),
              child: Text(
                AppLocalizations.of(context).translate("vehicles for sale"),
                style: TextStyle(
                    fontSize: 18,
                    fontFamily: "Cairo",
                    fontWeight: FontWeight.w700),
              ),
            ),
            Divider(
              color: Colors.grey,
              height: 8,
              thickness: 1,
              indent: 16,
              endIndent: 16,
            ),
            // HomeGrid(images1, footer)
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                homeTile(context,
                  AppLocalizations.of(context).translate("cars for sale"),
                    Image.asset(
                      'assets/images/1.jpg',
                      fit: BoxFit.fill,
                    )
                ),
                homeTile(context,
                    AppLocalizations.of(context).translate("free customs cars"),
                    Image.asset(
                      'assets/images/2.jpg',
                      fit: BoxFit.fill,
                    )
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                homeTile(context,
                    AppLocalizations.of(context).translate("cars and applications"),
                    Image.asset(
                      'assets/images/3.jpg',
                      fit: BoxFit.fill,
                    )
                ),
                homeTile(context,
                    AppLocalizations.of(context).translate("motorcycles"),
                    Image.asset(
                      'assets/images/4.jpg',
                      fit: BoxFit.fill,
                    )
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                homeTile(context,
                    AppLocalizations.of(context).translate("vans"),
                    Image.asset(
                      'assets/images/5.jpg',
                      fit: BoxFit.fill,
                    )
                ),
                homeTile(context,
                    AppLocalizations.of(context).translate("heavy machines"),
                    Image.asset(
                      'assets/images/6.jpg',
                      fit: BoxFit.fill,
                    )
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                homeTile(context,
                    AppLocalizations.of(context).translate("buses"),
                    Image.asset(
                      'assets/images/7.jpg',
                      fit: BoxFit.fill,
                    )
                ),
              ],
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 16, right: 16,top: 48),
              child: Text(
                AppLocalizations.of(context).translate("cars for rent"),
                style: TextStyle(
                    fontSize: 18,
                    fontFamily: "Cairo",
                    fontWeight: FontWeight.w700),
              ),
            ),
            Divider(
              color: Colors.grey,
              height: 8,
              thickness: 1,
              indent: 16,
              endIndent: 16,
            ),
//            HomeGrid(images2, footer2)
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              homeTile(context,
                  AppLocalizations.of(context).translate("cars for rent"),
                  Image.asset(
                    'assets/images/8.jpg',
                    fit: BoxFit.fill,
                  )
              ),
              homeTile(context,
                  AppLocalizations.of(context).translate("showrooms for rent"),
                  Image.asset(
                    'assets/images/9.jpg',
                    fit: BoxFit.fill,
                  )
              )

            ],
          )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 16, right: 16,top: 48),
              child: Text(
                AppLocalizations.of(context)
                    .translate("spare parts and accessiories"),
                style: TextStyle(
                    fontSize: 18,
                    fontFamily: "Cairo",
                    fontWeight: FontWeight.w700),
              ),
            ),
            Divider(
              color: Colors.grey,
              height: 8,
              thickness: 1,
              indent: 16,
              endIndent: 16,
            ),
//            HomeGrid(images3, footer3)
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              homeTile(context,
                  AppLocalizations.of(context).translate("accessories"),
                  Image.asset(
                    'assets/images/10.jpg',
                    fit: BoxFit.fill,
                  )
              ),
              homeTile(context,
                  AppLocalizations.of(context).translate("accessories shop"),
                  Image.asset(
                    'assets/images/11.jpg',
                    fit: BoxFit.fill,
                  )
              )
            ],
          ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                homeTile(context,
                    AppLocalizations.of(context).translate("spare parts"),
                    Image.asset(
                      'assets/images/12.jpg',
                      fit: BoxFit.fill,
                    )
                ),
                homeTile(context,
                    AppLocalizations.of(context).translate("spare parts shop"),
                    Image.asset(
                      'assets/images/13.jpg',
                      fit: BoxFit.fill,
                    )
                )
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                homeTile(context,
                    AppLocalizations.of(context).translate("tires"),
                    Image.asset(
                      'assets/images/14.jpg',
                      fit: BoxFit.fill,
                    )
                ),
              ],
            ),
          ],
        ),
        Divider(
          color: Colors.grey,
          height: 48,
          thickness: 1,
          indent: 16,
          endIndent: 16,
        ),
//        HomeGrid(images4, footer4),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
          homeTile(context,
              AppLocalizations.of(context).translate("agencies"),
              Image.asset(
                'assets/images/15.jpg',
                fit: BoxFit.fill,
              )
        ),
          homeTile(context,
              AppLocalizations.of(context).translate("cars showrooms"),
              Image.asset(
                'assets/images/16.jpg',
                fit: BoxFit.fill,
              )
          )
      ],),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Divider(
              color: Colors.grey,
              height: 48,
              thickness: 0,
              indent: 16,
              endIndent: 16,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: GestureDetector(
                  onTap: () {},
                  child: Container(

                    child:Stack(
                      children: <Widget>[
                        Container(
                          height: 180,
                          width: MediaQuery.of(context).size.width,
                          child: Card(
                            elevation: 2,
                            semanticContainer: true,
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  width: 0.0,
                                  style: BorderStyle.solid,
                                ),
                                borderRadius: BorderRadius.circular(10)),
                            color: Colors.white,
                            child: Image.asset(
                              'assets/images/18.jpg',
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Wrap(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(left: 8,right: 8,top: 8),
                              child: Card(
                                elevation: 2,
                                semanticContainer: true,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4)),
                                color: Colors.white,
                                child:Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 4),
                                  child: Text(
                                    AppLocalizations.of(context).translate('maintenance centers'),
                                    style: TextStyle(
                                        fontSize: 18, fontFamily: "Cairo", fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ),

                            )

                          ],
                        )
                      ],
                    ),
                  )),
            ),
            Divider(
              color: Colors.grey,
              height: 48,
              thickness: 0,
              indent: 16,
              endIndent: 16,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: GestureDetector(
                  onTap: () {
                    print("tapped");
                  },
                  child: Container(
                    height: 280,
                    width: MediaQuery.of(context).size.width,
                    child:Stack(children: <Widget>[
                      Card(
                        elevation: 2,
                        semanticContainer: true,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                              width: 0.0,
                              style: BorderStyle.solid,
                            ),
                            borderRadius: BorderRadius.circular(10)),
                        color: Colors.white,
                        child: Image.asset(
                          'assets/images/19.jpg',
                          fit: BoxFit.fill,
                        ),
                      ),

                      Wrap(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(left: 8,right: 8,top: 8),
                            child: Card(
                              elevation: 2,
                              semanticContainer: true,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4)),
                              color: Colors.white,
                              child:Padding(
                                padding: EdgeInsets.symmetric(horizontal: 4),
                                child: Text(
                                  AppLocalizations.of(context)
                                      .translate('news and driving experiences'),
                                  style: TextStyle(
                                      fontSize: 18, fontFamily: "Cairo", fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),

                          )

                        ],
                      )
                    ],)

                  )),
            ),
          ],
        )

      ],
    );
  }

//  @override
//  Widget buildGrid(BuildContext context) {
//    return GridView.count(
//      padding: EdgeInsets.only(left: 5, right: 5),
//      crossAxisCount: 2,
//      shrinkWrap: true,
//      physics: ScrollPhysics(),
//      children: <Widget>[
//        buildTile(
//          context,
//          0,
//          "Cars",
//          Image.asset(
//            "",
//            fit: BoxFit.fill,
//          ),
//        ),
//        buildTile(
//          context,
//          1,
//          "Maintainance",
//          Image.asset(
//            "",
//            fit: BoxFit.fill,
//          ),
//        ),
//        buildTile(
//          context,
//          2,
//          "Agencies",
//          Image.asset(
//            "",
//            fit: BoxFit.fill,
//          ),
//        ),
//        buildTile(
//          context,
//          3,
//          "Accessiories",
//          Image.asset(
//            "",
//            fit: BoxFit.fill,
//          ),
//        ),
//        buildTile(
//          context,
//          4,
//          "Spare cuts",
//          Image.asset(
//            "",
//            fit: BoxFit.fill,
//          ),
//        ),
//        buildTile(
//          context,
//          5,
//          "Rent",
//          Image.asset(
//            "",
//            fit: BoxFit.fill,
//          ),
//        ),
//      ],
//    );
//  }
//
//  int _selectedIndex = -1;
//
//  @override
//  Widget buildTile(
//    BuildContext context,
//    int index,
//    String heading,
//    Image image,
//  ) {
//    return Column(
//      crossAxisAlignment: CrossAxisAlignment.start,
//      children: <Widget>[
//        Container(
//          decoration: BoxDecoration(
//              color: Colors.white, borderRadius: BorderRadius.circular(10)),
//          child: GestureDetector(
//              onTap: () {
//                setState(() {
//                  _selectedIndex = index;
//                });
//                print("tapped");
//              },
//              child: Container(
//                height: 125,
//                child: Card(
//                  elevation: 2,
//                  semanticContainer: true,
//                  clipBehavior: Clip.antiAliasWithSaveLayer,
//                  shape: RoundedRectangleBorder(
//                      side: BorderSide(
//                          width: 1.0,
//                          style: BorderStyle.solid,
//                          color: _selectedIndex == index
//                              ? Colors.orange
//                              : Colors.white),
//                      borderRadius: BorderRadius.circular(10)),
//                  color: Colors.white,
//                  child: image,
//                ),
//              )),
//        ),
//        Container(
//          child: Text(
//            heading,
//            style: TextStyle(
//                fontSize: 21, fontFamily: "Cairo", fontWeight: FontWeight.w600),
//          ),
//        ),
//      ],
//    );
//  }

  @override
  Widget homeTile(BuildContext context, String footer, Image image) {

    return
      Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
           child: GestureDetector(
          onTap: () {
//            setState(() {
//            });
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (_) => ProductPage()));
            print("tapped");
          },
          child: Container(
            width: MediaQuery.of(context).size.width/2,
            child: Stack(
              children: <Widget>[
                  Container(
                    height: 140,
                    child: Card(
                      elevation: 2,
                      semanticContainer: true,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 1.0,
                            style: BorderStyle.solid,
                          ),
                          borderRadius: BorderRadius.circular(10)),
                      color: Colors.white,
                      child: image,
                    ),
                  ),
                Wrap(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 8,right: 8,top: 8),
                      child: Card(
                        elevation: 2,
                        semanticContainer: true,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4)),
                        color: Colors.white,
                        child:Padding(
                          padding: EdgeInsets.symmetric(horizontal: 4),
                          child: Text(
                            footer,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: "Cairo",
                              fontWeight: FontWeight.w600,),
                          ),
                        ),
                      ),

                    )

                  ],
                )

              ],
            )
          )),
    );

//    return Column(
//      crossAxisAlignment: CrossAxisAlignment.start,
//      children: <Widget>[
//        Container(
//          decoration: BoxDecoration(
//              color: Colors.white, borderRadius: BorderRadius.circular(10)),
//          child: GestureDetector(
//              onTap: () {
//                setState(() {
//                });
//                print("tapped");
//              },
//              child: Container(
//                height: 140,
//                width: MediaQuery.of(context).size.width/2.1,
//                child: Card(
//                  elevation: 2,
//                  semanticContainer: true,
//                  clipBehavior: Clip.antiAliasWithSaveLayer,
//                  shape: RoundedRectangleBorder(
//                      side: BorderSide(
//                          width: 1.0,
//                          style: BorderStyle.solid,
//                      ),
//                      borderRadius: BorderRadius.circular(10)),
//                  color: Colors.white,
//                  child: image,
//                ),
//              )),
//        ),
//        Container(
//          margin: EdgeInsets.symmetric(vertical: 0,horizontal: 16),
//          child: Text(
//            footer,
//            style: TextStyle(
//                fontSize: 16, fontFamily: "Cairo", fontWeight: FontWeight.w600),
//          ),
//        ),
//      ],
//    );
  }
}