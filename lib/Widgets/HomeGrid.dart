
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeGrid extends StatelessWidget{

    final List<Image> images;
    final List<String> footer;

  HomeGrid( this.images,this.footer);
  @override
    Widget build(BuildContext context) {
      return GridView.builder(
        itemCount: this.images.length,
        shrinkWrap: true,
        physics: ScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount:
            (MediaQuery.of(context).orientation == Orientation.portrait)
                ? 2
                : 3),
        itemBuilder: (BuildContext _, int index) {
          return
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white, borderRadius: BorderRadius.circular(10)),
                  child: GestureDetector(
                      onTap: () {
                        print("tapped");
                      },
                      child: Container(
                        height: 130,
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
                          child: images[index],
                        ),
                      )
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 16,right: 16),
                    child: Text(
                      footer[index],
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: "Cairo",
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                )
              ],
            );
        },
      );
    }

  }

//
//GestureDetector(
//onTap: () {
//},
//child: GridTile(
//child:  Container(
//child: Card(
//elevation: 2,
//semanticContainer: true,
//clipBehavior: Clip.antiAliasWithSaveLayer,
//shape: RoundedRectangleBorder(
//side: BorderSide(
//width: 0.0,
//style: BorderStyle.solid,
//),
//borderRadius: BorderRadius.circular(10)),
//color: Colors.white,
//child: images[index],
//),
//),
//footer: Container(
//margin: EdgeInsets.only(top: 25),
//alignment: Alignment.center,
//child: Text(
//footer[index],
//style: TextStyle(
//fontFamily: "cairo",
//fontSize: 16,
//fontWeight: FontWeight.bold,
//),
//maxLines: 1,
//overflow: TextOverflow.ellipsis,
//),
//),
//),
//);
