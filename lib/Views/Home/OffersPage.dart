import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OffersPage extends StatelessWidget{

  List<Image>offers;


  final List<Image> images3 = [
    Image.asset(
      'assets/images/8.jpg',
      fit: BoxFit.fill,
    ),
    Image.asset(
      'assets/images/1.jpg',
      fit: BoxFit.fill,
    ),
    Image.asset(
      'assets/images/2.jpg',
      fit: BoxFit.fill,
    ),
    Image.asset(
      'assets/images/8.jpg',
      fit: BoxFit.fill,
    ),
    Image.asset(
      'assets/images/8.jpg',
      fit: BoxFit.fill,
    ),
    Image.asset(
      'assets/images/1.jpg',
      fit: BoxFit.fill,
    ),
    Image.asset(
      'assets/images/2.jpg',
      fit: BoxFit.fill,
    ),
    Image.asset(
      'assets/images/1.jpg',
      fit: BoxFit.fill,
    ),
    Image.asset(
      'assets/images/8.jpg',
      fit: BoxFit.fill,
    )
  ];
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: this.images3.length,
      shrinkWrap: true,

      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(

          crossAxisCount:
          (MediaQuery.of(context).orientation == Orientation.portrait)
              ? 3
              : 4),
      itemBuilder: (BuildContext _, int index) {
        return GestureDetector(
          onTap: () {
//            _showNewsArticleDetails(context, article);
          },
          child: GridTile(
            child: offerWidget(context,images3[index]),

          ),
        );
      },
    );
  }
  @override
  Widget offerWidget(BuildContext context,Image image){
  return Container(
    child: Stack(
              children: <Widget>[
                Container(
                  height: 130,
                  child: Card(
                    elevation: 2,
                    semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: .5,
                          style: BorderStyle.solid,
                        ),
                        borderRadius: BorderRadius.circular(4)),
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
                        color: Colors.black54,
                        child:Padding(
                          padding: EdgeInsets.symmetric(horizontal: 4),
                          child: Text(
                            " 30000 دينار",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: "Cairo",
                              fontWeight: FontWeight.w600,),
                          ),
                        ),
                      ),

                    )

                  ],
                )
//              DiscountWidget(),
              ],
            ),
  );

}

}
