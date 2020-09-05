import 'package:automotor/Utils/AppLocalization.dart';
import 'package:automotor/ViewModels/AccessioriesViewModel.dart';
import 'package:automotor/ViewModels/ItemsViewModel.dart';
import 'package:automotor/Views/Home/AccessioresView.dart';
import 'package:automotor/Views/Home/ProductPage.dart';
import 'package:automotor/Widgets/HomeGrid.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
//            Row(
//              mainAxisSize: MainAxisSize.max,
//              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//              children: <Widget>[
//                homeTile(context,
//                    AppLocalizations.of(context).translate("cars and applications"),
//                    Image.asset(
//                      'assets/images/3.jpg',
//                      fit: BoxFit.fill,
//                    )
//                ),
//                homeTile(context,
//                    AppLocalizations.of(context).translate("motorcycles"),
//                    Image.asset(
//                      'assets/images/4.jpg',
//                      fit: BoxFit.fill,
//                    )
//                ),
//              ],
//            ),
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
//            Row(
//              mainAxisSize: MainAxisSize.max,
//              mainAxisAlignment: MainAxisAlignment.start,
//              children: <Widget>[
//                homeTile(context,
//                    AppLocalizations.of(context).translate("tires"),
//                    Image.asset(
//                      'assets/images/14.jpg',
//                      fit: BoxFit.fill,
//                    )
//                ),
//              ],
//            ),
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
  @override
  Widget homeTile(BuildContext context, String name, Image image) {

    return
      Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
           child: GestureDetector(
          onTap: () {
            if(name== AppLocalizations.of(context).translate("cars for sale")||
                name== AppLocalizations.of(context).translate("free customs cars")){
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) =>
              ChangeNotifierProvider(
                create: (context)=>ItemsViewModel(),
                child: ProductPage("sale-cars"),
              )));
            }

            else if(name==AppLocalizations.of(context).translate("accessories")){
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) =>
                  ChangeNotifierProvider(
                    create: (context)=>AccessioriesViewModel(),
                    child: AccessioriesView("sale-cars"),
                  )));
            }

            else if(name== AppLocalizations.of(context).translate("cars for rent")){
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) =>
                  ChangeNotifierProvider(
                    create: (context)=>ItemsViewModel(),
                    child: ProductPage("rent-cars"),
                  )));

            }
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
                            name,
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
  }
}
