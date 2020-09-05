import 'package:automotor/Models/CarSaleModel.dart';
import 'package:automotor/Network/BaseAPiRespinse.dart';
import 'package:automotor/Utils/AppLocalization.dart';
import 'package:automotor/Utils/Constant.dart';
import 'package:automotor/ViewModels/ItemsViewModel.dart';
import 'package:automotor/Widgets/BaseScreen.dart';
import 'package:automotor/Widgets/BottomBar.dart';
import 'package:automotor/Widgets/MyText.dart';
import 'package:automotor/Widgets/ProductCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';

import 'AddProduct.dart';
import 'SearchPage.dart';

class ProductPage extends StatefulWidget {
  String itemType="";
  ProductPage(this.itemType);
  @override
  State<StatefulWidget> createState() => _ProductPageState(itemType);
}

class _ProductPageState extends State<ProductPage> with
    TickerProviderStateMixin<ProductPage>,BaseScreen  {

  TabController _tabController;
  TabController bottomTabController;
  String itemType="";

  _ProductPageState(this.itemType);


  List<ProductCrad> products = [
    ProductCrad(
      " هوندا اكسنت  جديد زيرو جمارك",
      'assets/images/1.jpg',
      '16,500دينار',
      '18-6-2020/16:00pm',
    ),
    ProductCrad(
      "كيا نيرو 2018 فحص جديد زيرو جمارككيا نيرو 2018 فحص جديد زيرو جمارككيا نيرو 2018 فحص جديد زيرو جمارك كيا نيرو 2018 فحص جديد زيرو جمارك",
      'assets/images/2.jpg',
      '16,500دينار',
      '18-6-2020/16:00pm',
    ),
    ProductCrad(
      "كيا سيراتو 2020 فحص جديد زيرو جمارك",
      'assets/images/8.jpg',
      '16,500دينار',
      '18-6-2020/16:00pm',
    ),
    ProductCrad(
      " bmw  فحص جديد زيرو جمارك",
      'assets/images/3.jpg',
      '16,500دينار',
      '18-6-2020/16:00pm',
    )
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
    bottomTabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (_) => AddItem()));

        },
        backgroundColor: Color(0xFFF17532),
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomBar(index: 2,),
    );
  }

  Widget topsearch(BuildContext context) {
    return Container(
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 2, right: 2, top: 32),
            child: InkWell(
              child: Icon(
                Icons.arrow_back,
              ),
              onTap: () {
               Navigator.of(context).pop();
              },
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width - 60,
            margin: EdgeInsets.only(left: 16, right: 16, top: 32),
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
              ),
              onTap: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => SearchPage())),
            ),
          )
        ],
      ),
    );
  }

  Widget topHeader(BuildContext context) {
    return Container(
        child: Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        FlatButton(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(
                  'فلترة',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
                Icon(
                  Icons.view_list,
                  color: Colors.black,
                )
              ],
            ),
            onPressed: null,
            shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(15.0))),
        Container(
          height: 30,
          child: VerticalDivider(
            width: 1,
            thickness: 0.5,
            color: Colors.black54,
          ),
        ),
        FlatButton(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(
                  'ترتيب',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
                Icon(
                  Icons.sort,
                  color: Colors.black,
                )
              ],
            ),
            onPressed: null,
            shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(15.0))),
      ],
    ));
  }

  Widget body() {
    getData();
    return Stack(
      children: <Widget>[
        Consumer<ItemsViewModel>(
            builder: (context, model, child){
              return  switchWidgets(model,context);
            })

      ],
    );

  }

  Widget switchWidgets(ItemsViewModel model, BuildContext context) {

  if(itemType=="sale-cars"){
    switch (model.SalecarsResponseWrapper.status){
      case Status.LOADING:
        return super.loadingIndicator(model.SalecarsResponseWrapper.status==Status.LOADING, context);
        break;
      case Status.empty:
        return super.loadingIndicator(model.SalecarsResponseWrapper.status==Status.empty, context);
      case Status.ERROR:
        return
          Visibility(
            visible: model.SalecarsResponseWrapper.status==Status.ERROR,
            child:Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Center(
                  child: Text(model.error,
                    style:
                    TextStyle(fontSize: 16,fontWeight: FontWeight.w500,fontFamily: "Cairo",color: Colors.red),),
                )),
          );
        break;
      case Status.COMPLETED:
        return
          model.SaleCarsModel.sale_cars.length>0?
          itemsListView(model):
          Container(
            child: Center(
              child: MyText("error_empty",style: TextStyle(fontFamily: "Cairo",fontWeight: FontWeight.w700
                  ,fontSize: 18),),
            ),
          );
        break;
    }

  }

  else{
    switch (model.rentCarsResponseWrapper.status){
      case Status.LOADING:
        return super.loadingIndicator(model.rentCarsResponseWrapper.status==Status.LOADING, context);
        break;
      case Status.empty:
        return super.loadingIndicator(model.rentCarsResponseWrapper.status==Status.empty, context);
      case Status.ERROR:
        return
          Visibility(
            visible: model.rentCarsResponseWrapper.status==Status.ERROR,
            child:Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Center(
                  child: Text(model.error,
                    style:
                    TextStyle(fontSize: 16,fontWeight: FontWeight.w500,fontFamily: "Cairo",color: Colors.red),),
                )),
          );
        break;
      case Status.COMPLETED:
        return
          model.rentCarsModel.rentCars.length>0?
          itemsListView(model):
          Container(
            child: Center(
              child: MyText("error_empty",style: TextStyle(fontFamily: "Cairo",fontWeight: FontWeight.w700
                  ,fontSize: 18),),
            ),
          );
        break;
    }


  }

  }


  Widget itemsListView(ItemsViewModel model){
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        topsearch(context),
        topHeader(context),
       Flexible(
         child: ListView.separated(
         itemCount:itemType=="sale-cars"?model.SaleCarsModel.sale_cars.length:model.rentCarsModel.rentCars.length,
          shrinkWrap: true,
          separatorBuilder: (BuildContext context, int index) =>
              Divider(
                height: 2,
                color: Colors.orange,
                thickness: 0.3,
              ),
          itemBuilder: (_, index) => Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.symmetric(horizontal: 4),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment:
                    CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                        crossAxisAlignment:
                        CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Container(
                            width: 150,
                            height: 120,
                            child: Card(
                              elevation: 2,
                              semanticContainer: true,
                              clipBehavior:
                              Clip.antiAliasWithSaveLayer,
                              shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                    width: .5,
                                    style: BorderStyle.solid,
                                  ),
                                  borderRadius:
                                  BorderRadius.circular(4)),
                              color: Colors.white,
                              child: Image.network(
                                itemType=="sale-cars"?Constant.BASE_IMAGE_URL+model.SaleCarsModel.sale_cars[index].pics[0]
                                :Constant.BASE_IMAGE_URL+model.rentCarsModel.rentCars[index].pics[0],
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                left: 8, right: 8, top: 0),
                            child: Card(
                              elevation: 0,
                              semanticContainer: true,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                  BorderRadius.circular(4)),
                              color: Colors.orangeAccent,
                              child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 4),
                                  child: Row(
                                    children: <Widget>[
                                      Text(
                                        itemType=="sale-cars"?model.SaleCarsModel.sale_cars[index].pics.length.toString()
                                            :model.rentCarsModel.rentCars[index].pics.length.toString(),
                                        textAlign:
                                        TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontFamily: "Cairo",
                                          fontWeight:
                                          FontWeight.w600,
                                        ),
                                      ),
                                      Icon(
                                        Icons.photo_camera,
                                        color: Colors.white,
                                      )
                                    ],
                                  )),
                            ),
                          )
                        ],
                      ),
                      Flexible(
                        child:
                        Column(
                          mainAxisAlignment:
                          MainAxisAlignment.start,
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(
                                  top: 12, left: 12, right: 12),
                              child: Text(
                                itemType=="sale-cars"?model.SaleCarsModel.sale_cars[index].description
                                :model.rentCarsModel.rentCars[index].description,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                OutlineButton(
                                    child: Text(
                                     itemType=="sale-cars"?model.SaleCarsModel.sale_cars[index].location.name
                                      :model.rentCarsModel.rentCars[index].location.name,
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.black,
                                      ),
                                    ),
                                    onPressed: null,
                                    shape:
                                    new RoundedRectangleBorder(
                                        borderRadius:
                                        new BorderRadius
                                            .circular(
                                            15.0))),
//                                  OutlineButton(
//                                      child: Text(
//                                        'مركبات',
//                                        style: TextStyle(
//                                          fontSize: 14,
//                                          fontWeight: FontWeight.w300,
//                                          color: Colors.black,
//                                        ),
//                                      ),
//                                      onPressed: null,
//                                      shape:
//                                      new RoundedRectangleBorder(
//                                          borderRadius:
//                                          new BorderRadius
//                                              .circular(
//                                              15.0))),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment:
                              MainAxisAlignment.end,
                              mainAxisSize: MainAxisSize.max,
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.symmetric(
                                      horizontal: 16),
                                  child: Text(
                                   itemType=="sale-cars"? model.SaleCarsModel.sale_cars[index].price+"دينار"
                                    :model.rentCarsModel.rentCars[index].price+"دينار",
                                    style: TextStyle(
                                        fontWeight:
                                        FontWeight.w700,
                                        fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment:
                              MainAxisAlignment
                                  .spaceBetween,
                              mainAxisSize: MainAxisSize.max,
                              children: <Widget>[
                                Container(
                                  child: Text(
                                      itemType=="sale-cars"?model.SaleCarsModel.sale_cars[index].created_at
                                  :model.rentCarsModel.rentCars[index].created_at),
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 50,
                  child: Row(
                    mainAxisAlignment:
                    MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      OutlineButton(
                          child: Row(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text(
                                'اتصل',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                ),
                              ),
                              Icon(
                                Icons.phone_forwarded,
                                color: Colors.green,
                              )
                            ],
                          ),
                          onPressed: null,
                          shape: new RoundedRectangleBorder(
                              borderRadius:
                              new BorderRadius.circular(
                                  15.0))),
                      OutlineButton(
                          child: Row(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text(
                                'دردش',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                ),
                              ),
                              Icon(
                                Icons.chat,
                                color: Colors.blue,
                              )
                            ],
                          ),
                          onPressed: null,
                          shape: new RoundedRectangleBorder(
                              borderRadius:
                              new BorderRadius.circular(
                                  15.0)))
                    ],
                  ),
                )
              ],
            ),
          )),
       )
      ],
    );
  }
  void getData() {
    itemType=="sale-cars"? Provider.of<ItemsViewModel>(context,listen: false).get(null)
    : Provider.of<ItemsViewModel>(context,listen: false).getRent(null);
  }
}
