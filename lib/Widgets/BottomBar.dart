import 'package:automotor/Views/Home/AddProduct.dart';
import 'package:automotor/Views/Profile/ProfilePage.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  final TabController controller;
  int _currentIndex = 0;
  var selectedColor = Colors.orange;
  var unselectedColor = Colors.black54;

  BottomBar({Key key, this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 6.0,
        color: Colors.white,
        elevation: 30.0,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: selectedColor,
          unselectedItemColor: unselectedColor,
          unselectedFontSize: 10,
          selectedFontSize: 10,
          items: [
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
          ],
          onTap: (currentIndex) {
            _currentIndex = currentIndex;
            if (_currentIndex == 0)
              controller.animateTo(0);
            else if (_currentIndex == 1)
              controller.animateTo(1);
            else if (_currentIndex == 2)
              Navigator.of(context).push(MaterialPageRoute(builder: (_) => AddItem()));

            else if (_currentIndex == 3)
              controller.animateTo(2);
            else if (_currentIndex == 4) controller.animateTo(3);
          },
        ));
  }
}

//
//Row(
//mainAxisAlignment: MainAxisAlignment.spaceBetween,
//children: [
//Container(
//height: 50.0,
//width: MediaQuery.of(context).size.width /2 - 50.0,
//child: Row(
//mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//children: <Widget>[
//InkWell(child: Icon(Icons.home, color: Color(0xFFEF7532),),
//onTap: ()=>controller.animateTo(0),),
//Stack(children: <Widget>[
//InkWell(child: Icon(Icons.chat, color: Color(0xFF676E79)),
//onTap: ()=>controller.animateTo(1),),
//Positioned(
//right: 0,
//child: new Container(
//padding: EdgeInsets.all(1),
//decoration: new BoxDecoration(
//color: Colors.red,
//borderRadius: BorderRadius.circular(6),
//),
//constraints: BoxConstraints(
//minWidth: 12,
//minHeight: 12,
//),
//child: new Text(
//'99',
//style: new TextStyle(
//color: Colors.white,
//fontSize: 8,
//),
//textAlign: TextAlign.center,
//),
//),
//)
//],
//)
//],
//)
//),
//Container(
//height: 50.0,
//width: MediaQuery.of(context).size.width /2 - 50.0,
//child: Row(
//mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//children: <Widget>[
//Stack(children: <Widget>[
//InkWell(
//child: Icon(Icons.notifications_active, color: Color(0xFF676E79))
//,onTap: ()=>controller.animateTo(2),),
//Positioned(
//right: 0,
//child: new Container(
//padding: EdgeInsets.all(1),
//decoration: new BoxDecoration(
//color: Colors.red,
//borderRadius: BorderRadius.circular(6),
//),
//constraints: BoxConstraints(
//minWidth: 12,
//minHeight: 12,
//),
//child: new Text(
//'99',
//style: new TextStyle(
//color: Colors.white,
//fontSize: 8,
//),
//textAlign: TextAlign.center,
//),
//),
//)
//],
//),
//InkWell(
//child: Icon(
//Icons.person_outline,
//color: Color(0xFF676E79),
//),
//onTap:(){
//controller.animateTo(3);
//}
//)
//],
//)
//),
//]
//)

//
//BottomNavigationBar(
//type: BottomNavigationBarType.fixed,
//selectedItemColor: selectedColor,
//unselectedItemColor: unselectedColor,
//unselectedFontSize: 10,
//selectedFontSize: 10,
//items: [
//BottomNavigationBarItem(
//icon: Icon(
//Icons.home,
////                color: controller.index == 0 ? selectedColor : unselectedColor,
//),
//title: Text(
//"الرئيسية",
//),
//),
//BottomNavigationBarItem(
//icon: new Stack(
//children: <Widget>[
//Icon(Icons.chat,
////                        color: controller.index == 1
////                            ? selectedColor
////                            : unselectedColor
//),
//Positioned(
//right: 0,
//child: new Container(
//padding: EdgeInsets.all(1),
//decoration: new BoxDecoration(
//color: Colors.red,
//borderRadius: BorderRadius.circular(6),
//),
//constraints: BoxConstraints(
//minWidth: 12,
//minHeight: 12,
//),
//child: new Text(
//'99',
//style: new TextStyle(
//color: Colors.white,
//fontSize: 8,
//),
//textAlign: TextAlign.center,
//),
//),
//)
//],
//),
//title: new Text(
//"دردشاتي ",
////style: TextStyle(color: Colors.black45),
//)),
//BottomNavigationBarItem(
//icon: new Icon(
//Icons.add,
//),
//title: new Text(
//"أضف إعلان",
////style: TextStyle(color: Colors.black45),
//)),
//BottomNavigationBarItem(
//icon: Stack(
//children: <Widget>[
//Icon(Icons.notifications_active,
////                        color: controller.index == 2
////                            ? selectedColor
////                            : unselectedColor
//),
//Positioned(
//right: 0,
//child: new Container(
//padding: EdgeInsets.all(1),
//decoration: new BoxDecoration(
//color: Colors.red,
//borderRadius: BorderRadius.circular(6),
//),
//constraints: BoxConstraints(
//minWidth: 12,
//minHeight: 12,
//),
//child: new Text(
//'99',
//style: new TextStyle(
//color: Colors.white,
//fontSize: 8,
//),
//textAlign: TextAlign.center,
//),
//),
//)
//],
//),
//title: new Text(
//"إشعارات",
////style: TextStyle(color: Colors.black45),
//)),
//BottomNavigationBarItem(
//icon: new Icon(
//Icons.person_outline,
////                    color:  controller.index == 3 ? selectedColor : unselectedColor
//
//),
//title: new Text(
//" حسابي",
////style: TextStyle(color: Colors.black45),
//))
//],
//onTap: (currentIndex) {
//_currentIndex = currentIndex;
//if (_currentIndex == 0)
//controller.animateTo(0);
//else if (_currentIndex == 1)
//controller.animateTo(1);
//else if (_currentIndex == 3)
//controller.animateTo(2);
//else if (_currentIndex == 4) controller.animateTo(3);
//},
//));
