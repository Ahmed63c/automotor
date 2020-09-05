import 'dart:convert';
import 'package:automotor/Models/CarSaleModel.dart';
import 'package:automotor/Models/RentCarModel.dart';
import 'package:automotor/Network/ApiBaseHelper.dart';
import 'package:automotor/Network/BaseAPiRespinse.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class ItemsViewModel with ChangeNotifier{

  ApiResponse<CarSaleModel> SalecarsResponseWrapper=ApiResponse.empty("");
  ApiBaseHelper helper=ApiBaseHelper();
  CarSaleModel SaleCarsModel= new CarSaleModel();
  String error="حدث خطأ ما تحقق منن الانترنت وحاول مره أخري";


  ApiResponse<RentCarModel> rentCarsResponseWrapper=ApiResponse.empty("");
  RentCarModel rentCarsModel= new RentCarModel();


  void get(Map<String,dynamic> data) async{
    SalecarsResponseWrapper=ApiResponse.loading("Loading");
    notifyListeners();
    try {

      var response =await helper.get("sale-cars",data);
      SaleCarsModel=CarSaleModel.fromJson(response.data);
      if(response.statusCode==200){

        SalecarsResponseWrapper=ApiResponse.completed(SaleCarsModel);
        notifyListeners();

      }
      else{
        SalecarsResponseWrapper=ApiResponse.error(response.statusMessage);
        notifyListeners();
      }
    }
    on Exception catch (e) {
      print("here"+"error"+e.toString());
      SalecarsResponseWrapper=ApiResponse.error(e.toString());
      notifyListeners();
    }
  }


  void getRent(Map<String,dynamic> data) async{
    rentCarsResponseWrapper=ApiResponse.loading("Loading");
    notifyListeners();
    try {

      var response =await helper.get("rent-cars",data);
      rentCarsModel=RentCarModel.fromJson(response.data);
      if(response.statusCode==200){
        rentCarsResponseWrapper=ApiResponse.completed(rentCarsModel);
        notifyListeners();

      }
      else{
        rentCarsResponseWrapper=ApiResponse.error(response.statusMessage);
        notifyListeners();
      }
    }
    on Exception catch (e) {
      print("here"+"error"+e.toString());
      rentCarsResponseWrapper=ApiResponse.error(e.toString());
      notifyListeners();
    }
  }
}