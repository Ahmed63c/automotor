import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AddItem extends StatefulWidget {
  @override
  MapScreenState createState() => MapScreenState();
}

class MapScreenState extends State<AddItem>
    with SingleTickerProviderStateMixin {
  bool _status = true;
  final FocusNode myFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: ListView(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              SizedBox(
                height: 12,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Icon(
                    Icons.add,
                    color: Colors.green,
                    size: 22.0,
                  ),
                  Text('اضف اعلانك',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          color: Colors.black)),
                  Icon(
                    Icons.cancel,
                    color: Colors.red,
                    size: 22.0,
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    width: 60.0,
                    height: 60.0,
                    decoration: new BoxDecoration(
                        shape: BoxShape.circle, color: Colors.orange),
                    child: Icon(
                      Icons.add_a_photo,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 24, right: 16, left: 16),
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: ListTile(
                  title: Text('ماالذي تود بيعه أو الإعلان عنه'),
                  trailing: Icon(Icons.chevron_right, color: Colors.orange),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                margin: EdgeInsets.only(top: 24, right: 16, left: 16),
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: ListTile(
                  title: Text('اسم اللاعلان  (مثال سياره كيا للبيع 2020 )'),
                  trailing: Icon(Icons.chevron_right, color: Colors.orange),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                margin: EdgeInsets.only(top: 24, right: 16, left: 16),
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: ListTile(
                  title: Text('السعر المطلوب '),
                  trailing: Text("دينار"),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                height: 100,
                margin: EdgeInsets.only(top: 24, right: 16, left: 16),
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(left: 10,right: 10),
                      hintText:"تفاصيل الاعلان ........",
                      hintStyle: TextStyle(fontSize: 18.0)),
                )),
              Container(
                margin: EdgeInsets.all(18),
                width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                  ),
                child: RaisedButton(
                  onPressed: () {},
                  child: const Text('أضف إعلانك', style: TextStyle(fontSize: 20)),
                  color: Colors.orange,
                  textColor: Colors.white,
                  elevation: 5,
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  @override
  void dispose() {
    // Clean up the controller when the Widget is disposed
    myFocusNode.dispose();
    super.dispose();
  }
}
