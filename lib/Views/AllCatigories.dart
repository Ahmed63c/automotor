import 'package:automotor/Utils/AppLocalization.dart';
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

    final List<Image> images1=[Image.asset(
      'assets/images/1.jpg',
      fit: BoxFit.fill,
    ),Image.asset(
      'assets/images/2.jpg',
      fit: BoxFit.fill,
    ),Image.asset(
      'assets/images/3.jpeg',
      fit: BoxFit.fill,
    ),
      Image.asset('assets/images/4.jpg',
        fit: BoxFit.fill,),
      Image.asset(
        'assets/images/5.jpg',
        fit: BoxFit.fill,
      ),Image.asset (
        'assets/images/6.jpg',
        fit: BoxFit.fill,
      ),Image.asset(
        'assets/images/7.jpg',
        fit: BoxFit.fill,
      ),];



    List<String> footer=[AppLocalizations.of(context).translate("cars for sale"),
      AppLocalizations.of(context).translate("free customs cars"),
      AppLocalizations.of(context).translate("cars and applications"),
      AppLocalizations.of(context).translate("motorcycles"),
      AppLocalizations.of(context).translate("vans"),
      AppLocalizations.of(context).translate("heavy machines"),
      AppLocalizations.of(context).translate("buses")];


    final List<Image> images2=[Image.asset(
      'assets/images/8.jpg',
      fit: BoxFit.fill,
    ),Image.asset(
      'assets/images/9.jpg',
      fit: BoxFit.fill,
    )];

    List<String> footer2=[AppLocalizations.of(context).translate("cars for rent"),
    AppLocalizations.of(context).translate("showrooms for rent"),];


    final List<Image> images3=[Image.asset(
      'assets/images/10.jpg',
      fit: BoxFit.fill,
    ),Image.asset(
      'assets/images/11.jpg',
      fit: BoxFit.fill,
    ),Image.asset(
      'assets/images/12.jpg',
      fit: BoxFit.fill,
    ),Image.asset(
      'assets/images/13.jpg',
      fit: BoxFit.fill,
    ),Image.asset(
      'assets/images/14.jpg',
      fit: BoxFit.fill,
    )];


    List<String> footer3=[AppLocalizations.of(context).translate("accessories"),
      AppLocalizations.of(context).translate("accessories shop"),
      AppLocalizations.of(context).translate("spare parts"),
      AppLocalizations.of(context).translate("spare parts shop"),
      AppLocalizations.of(context).translate("tires")];


    final List<Image> images4=[Image.asset(
      'assets/images/15.jpg',
      fit: BoxFit.fill,
    ),Image.asset(
      'assets/images/16.jpg',
      fit: BoxFit.fill,
    )];

    List<String> footer4=[AppLocalizations.of(context).translate("agencies"),
      AppLocalizations.of(context).translate("cars showrooms"),];

    return
      ListView(children: <Widget>[

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 16, right: 16),
            child: Text(
              AppLocalizations.of(context).translate("vehicles for sale"),
              style: TextStyle(
                  fontSize: 20, fontFamily: "Cairo", fontWeight: FontWeight.w700),
            ),
          ),
          Divider(
            color: Colors.grey,
            height: 20,
            thickness: 2,
            indent: 16,
            endIndent: 16,
          ),
          HomeGrid(images1, footer)

        ],),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 16, right: 16),
              child: Text(
                AppLocalizations.of(context).translate("cars for rent"),
                style: TextStyle(
                    fontSize: 20, fontFamily: "Cairo", fontWeight: FontWeight.w700),
              ),
            ),
            Divider(
              color: Colors.grey,
              height: 20,
              thickness: 2,
              indent: 16,
              endIndent: 16,
            ),
            HomeGrid(images2, footer2)

          ],),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 16, right: 16),
              child: Text(
                AppLocalizations.of(context).translate("spare parts and accessiories"),
                style: TextStyle(
                    fontSize: 20, fontFamily: "Cairo", fontWeight: FontWeight.w700),
              ),
            ),
            Divider(
              color: Colors.grey,
              height: 20,
              thickness: 2,
              indent: 16,
              endIndent: 16,
            ),
            HomeGrid(images3, footer3)

          ],),
        Divider(
          color: Colors.grey,
          height: 20,
          thickness: 2,
          indent: 16,
          endIndent: 16,
        ),
        HomeGrid(images4, footer4),
        Divider(
          color: Colors.grey,
          height: 20,
          thickness: 2,
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
                height: 150,
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
                  child: Image.asset('assets/images/17.jpg',fit: BoxFit.fill,),
                ),
              )
          ),
        ),
        Expanded(
          child: Container(
            margin: EdgeInsets.only(left: 16,right: 16),
            child: Text(
              AppLocalizations.of(context).translate('maintenance centers'),
              style: TextStyle(
                  fontSize: 20,
                  fontFamily: "Cairo",
                  fontWeight: FontWeight.w600),
            ),
          ),
        ),
        Divider(
          color: Colors.grey,
          height: 20,
          thickness: 2,
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
                height: 300,
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
                  child: Image.asset('assets/images/19.jpg',fit: BoxFit.fill,),
                ),
              )
          ),
        ),
        Expanded(
          child: Container(
            margin: EdgeInsets.only(left: 16,right: 16,bottom: 16),
            child: Text(
              AppLocalizations.of(context).translate('news and driving experiences'),
              style: TextStyle(
                  fontSize: 20,
                  fontFamily: "Cairo",
                  fontWeight: FontWeight.w600),
            ),
          ),
        )


      ],
      );
  }

  @override
  Widget buildGrid(BuildContext context) {
    return GridView.count(
      padding: EdgeInsets.only(left: 5, right: 5),
      crossAxisCount: 2,
      shrinkWrap: true,
      physics: ScrollPhysics(),
      children: <Widget>[
        buildTile(context, 0, "Cars", Image.asset(
            "",
            fit: BoxFit.fill,
          ),),
        buildTile(context, 1, "Maintainance", Image.asset(
            "",
            fit: BoxFit.fill,
          ),),
        buildTile(context, 2, "Agencies", Image.asset(
            "",
            fit: BoxFit.fill,
          ),),
        buildTile(context, 3, "Accessiories", Image.asset(
            "",
            fit: BoxFit.fill,
          ),),
        buildTile(context, 4, "Spare cuts", Image.asset(
            "",
            fit: BoxFit.fill,
          ),),
        buildTile(context, 5, "Rent", Image.asset(
            "",
            fit: BoxFit.fill,
          ),),
      ],
    );
  }

  int _selectedIndex = -1;

  @override
  Widget buildTile(BuildContext context,
      int index,
      String heading,
      Image image,) {
    return
      Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          child: GestureDetector(
              onTap: () {
                setState(() {
                  _selectedIndex = index;
                });
                print("tapped");
              },
              child: Container(
                height: 125,
                child: Card(
                  elevation: 2,
                  semanticContainer: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  shape: RoundedRectangleBorder(
                      side: BorderSide(
                          width: 1.0,
                          style: BorderStyle.solid,
                          color: _selectedIndex == index
                              ? Colors.orange
                              : Colors.white),
                      borderRadius: BorderRadius.circular(10)),
                  color: Colors.white,
                  child: image,
                ),
              )
          ),
        ),
        Expanded(
          child: Container(
            margin: EdgeInsets.only(
                left: index == 0 || index == 2 || index == 4 ? 8 : 4,
                top: 0,
                right: index == 1 || index == 3 || index == 5 ? 8 : 4,
                bottom: index == 4 || index == 5 ? 0 : 0),
            child: Text(
              heading,
              style: TextStyle(
                  fontSize: 21,
                  fontFamily: "Cairo",
                  fontWeight: FontWeight.w600),
            ),
          ),
        )
      ],
    );
  }


  @override
  Widget homeTile(BuildContext context,String footer,Image image){
    

  }
}
