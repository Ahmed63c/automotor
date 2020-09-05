import 'dart:convert';
import 'package:automotor/Models/AccessioriesModel.dart';
import 'package:automotor/Models/CarSaleModel.dart';
import 'package:automotor/Network/ApiBaseHelper.dart';
import 'package:automotor/Network/BaseAPiRespinse.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class AccessioriesViewModel with ChangeNotifier{

  ApiResponse<AccessioriesModel> accessioriesResponseWrapper=ApiResponse.empty("");
  ApiBaseHelper helper=ApiBaseHelper();
  AccessioriesModel accessioriesModel= new AccessioriesModel();
  String error="حدث خطأ ما تحقق منن الانترنت وحاول مره أخري";

  void get(Map<String,dynamic> data) async{
    accessioriesResponseWrapper=ApiResponse.loading("Loading");
    notifyListeners();
    try {

      var response =await helper.get("accessories",data);
      accessioriesModel=AccessioriesModel.fromJson(response.data);
      if(response.statusCode==200){

        accessioriesResponseWrapper=ApiResponse.completed(accessioriesModel);
        notifyListeners();

      }
      else{
        accessioriesResponseWrapper=ApiResponse.error(response.statusMessage);
        notifyListeners();
      }
    }
    on Exception catch (e) {
      print("here"+"error"+e.toString());
      accessioriesResponseWrapper=ApiResponse.error(e.toString());
      notifyListeners();
    }
  }
}