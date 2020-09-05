
import 'dart:convert';

import 'package:automotor/Models/UserModel.dart';
import 'package:automotor/Network/ApiBaseHelper.dart';
import 'package:automotor/Network/BaseAPiRespinse.dart';
import 'package:automotor/Utils/Constant.dart';
import 'package:automotor/Utils/SharedPrefrence.dart';
import 'package:flutter/cupertino.dart';

class LoginViewModel with ChangeNotifier{

  ApiBaseHelper helper=ApiBaseHelper();
  UserModel userModel= new UserModel();
  ApiResponse<UserModel> user=ApiResponse.empty("");
  String error="حدث خطأ ما تحقق منن الانترنت وحاول مره أخري";


  void postData(Map<String,String> data) async{
    user=ApiResponse.loading("Loading");
    notifyListeners();
    try {
      var response =await helper.post("login", data);
      userModel=UserModel.fromJson(response.data);
      if(userModel.status=="01"){
        StorageUtil.getInstance().then((storage){
          StorageUtil.putString(Constant.TOKEN, userModel.details.access_token);
          StorageUtil.putString(Constant.USER_NAME, userModel.details.user.name);
          StorageUtil.putString(Constant.USER_IMAGE, userModel.details.user.name);

          StorageUtil.putBool(Constant.LOGGED_IN,true);
        });
        user=ApiResponse.completed(userModel);
        notifyListeners();

      }
      else{
        user=ApiResponse.error(userModel.message);
        error=" البريد الالكتروني او رقم المرور غير صحيح";
        notifyListeners();
      }
    }
    on Exception catch (e) {
      print("here"+"error"+e.toString());
      user=ApiResponse.error(e.toString());
      notifyListeners();
    }
  }
}