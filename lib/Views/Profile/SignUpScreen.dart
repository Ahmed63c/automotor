import 'package:automotor/Network/BaseAPiRespinse.dart';
import 'package:automotor/Utils/AppLocalization.dart';
import 'package:automotor/ViewModels/LoginViewModel.dart';
import 'package:automotor/ViewModels/SignUpViewModel.dart';
import 'package:automotor/Views/Profile/ProfilePage.dart';
import 'package:automotor/Widgets/BaseScreen.dart';
import 'package:automotor/Widgets/MyText.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wc_form_validators/wc_form_validators.dart';

class SignUp extends StatefulWidget {
  @override
  SignUpState createState() => SignUpState();
}

class SignUpState extends State<SignUp> with BaseScreen{

  bool obSecureText = true;
  bool obSecureTextConfirm = true;

  IconData iconOn = Icons.visibility;
  IconData iconOff = Icons.visibility_off;
  TextEditingController name1Controller = TextEditingController();
  TextEditingController name2Controller = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController passConfirmController = TextEditingController();

  bool _validate = false;
  bool _validateEmail = false;
  var formKey = GlobalKey<FormState>();
  SignUpViewModel vm;



  @override
  Widget build(BuildContext context) {
    vm=Provider.of<SignUpViewModel>(context);

    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          brightness: Brightness.light,
          backgroundColor: Colors.white,
          title: MyText(
            'register_new_user',
            style: TextStyle(color: Colors.black),
          ),
          elevation: 2,
        ),
        body:
        Stack(children: [
          SignUpView(),
          Consumer<SignUpViewModel>(builder: (context, model, child) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              if (model.userModel.status=="01") {
                model.user.status==Status.empty;
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=>ProfilePage()));
              }
            });
            return super.loadingIndicator(
                model.user.status == Status.LOADING, context);
          })
        ],)
    );
  }


  Widget SignUpView() {
    return Form(
      key: formKey,
      child: ListView(
        children: [
          name1Field(),
          name2Field(),
          emailField(),
          phoneField(),
          passwordField(),
          passwordConfirmField(),
          errorView(),
          signUpButton(),
          //bottomSignUp()
        ],
      ),
    );
  }


  Widget name1Field() {
    return Padding(
      padding: EdgeInsets.only(left: 16, right: 16, top: 8),
      child: TextFormField(
        keyboardType: TextInputType.text,
        controller: name1Controller,
        validator:
        Validators.compose([
          Validators.required(AppLocalizations.of(context).translate("error_field")),
//          Validators.patternRegExp(
//              RegExp(r"^[\u0621-\u064A0-9 ]+$"), AppLocalizations.of(context).translate("error_alphapet")),
          Validators.minLength(
              3,
              AppLocalizations.of(context)
                  .translate("error_less_character")),
        ]),
        decoration: InputDecoration(
          labelText: AppLocalizations.of(context).translate("first_name"),
          labelStyle: TextStyle(color: Colors.grey,fontFamily: "Cairo"),
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          border: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.grey, width: 1.0),
            borderRadius: BorderRadius.circular(4.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide:
            const BorderSide(color: Colors.orangeAccent, width: 1.0),
            borderRadius: BorderRadius.circular(4.0),
          ),
        ),
      ),
    );
  }

  Widget name2Field() {
    return Padding(
      padding: EdgeInsets.only(left: 16, right: 16, top: 8),
      child: TextFormField(
        keyboardType: TextInputType.text,
        controller: name2Controller,
        validator:
        Validators.compose([
          Validators.required(AppLocalizations.of(context).translate("error_field")),
//          Validators.patternRegExp(
//              RegExp(r"^[\u0621-\u064A0-9 ]+$"), AppLocalizations.of(context).translate("error_alphapet")),
          Validators.minLength(
              3,
              AppLocalizations.of(context)
                  .translate("error_less_character")),
        ]),
        decoration: InputDecoration(
          labelText: AppLocalizations.of(context).translate("last_name"),
          labelStyle: TextStyle(color: Colors.grey,fontFamily: "Cairo"),
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          border: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.grey, width: 1.0),
            borderRadius: BorderRadius.circular(4.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide:
            const BorderSide(color: Colors.orangeAccent, width: 1.0),
            borderRadius: BorderRadius.circular(4.0),
          ),
        ),
      ),
    );
  }
  
  Widget emailField() {
    return Padding(
      padding: EdgeInsets.only(left: 16, right: 16, top: 8),
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        controller: emailController,
        validator: Validators.compose([
          Validators.required(
              AppLocalizations.of(context).translate("error_field")),
          Validators.patternRegExp(
              RegExp(
                  r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)"
                  r"*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?"),
              AppLocalizations.of(context).translate("error_email_validate")),
        ]),
        decoration: InputDecoration(
          labelText: AppLocalizations.of(context).translate("hint_email_login"),
          labelStyle: TextStyle(color: Colors.grey, fontFamily: "Cairo"),
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          border: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.grey, width: 1.0),
            borderRadius: BorderRadius.circular(4.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide:
            const BorderSide(color: Colors.orangeAccent, width: 1.0),
            borderRadius: BorderRadius.circular(4.0),
          ),
        ),
      ),
    );
  }

  Widget phoneField() {
    return Padding(
      padding: EdgeInsets.only(left: 16, right: 16, top: 8),
      child: TextFormField(
        keyboardType: TextInputType.number,
        controller: phoneController,
        validator: Validators.compose([
          Validators.required(AppLocalizations.of(context).translate("error_field")),
          Validators.minLength(
              10,
              AppLocalizations.of(context)
                  .translate("error_phone_less")),
//           Validators.patternRegExp(
//              RegExp(r"^(?:[+0]9)?[0-9]{10}$"), AppLocalizations.of(context).translate("error_phone_validate")),
        ]),
        decoration: InputDecoration(
          labelText: AppLocalizations.of(context).translate("phone"),
          labelStyle: TextStyle(color: Colors.grey,fontFamily: "Cairo"),
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          border: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.grey, width: 1.0),
            borderRadius: BorderRadius.circular(4.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide:
            const BorderSide(color: Colors.orangeAccent, width: 1.0),
            borderRadius: BorderRadius.circular(4.0),
          ),
        ),
      ),
    );
  }

  Widget passwordField() {
    return Padding(
      padding: EdgeInsets.only(left: 16, right: 16, top: 16),
      child: TextFormField(
        keyboardType: TextInputType.number,
        obscureText: obSecureText,
        controller: passController,
        validator: Validators.compose([
          Validators.required(
              AppLocalizations.of(context).translate("error_field")),
          Validators.minLength(
              9,
              AppLocalizations.of(context)
                  .translate("error_pass_validate_less")),
          Validators.maxLength(
              15,
              AppLocalizations.of(context)
                  .translate("error_pass_validate_more"))
        ]),
        decoration: InputDecoration(
            labelText:
            AppLocalizations.of(context).translate("hint_password_login"),
            labelStyle: TextStyle(color: Colors.grey, fontFamily: "Cairo"),
            contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
            border: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.grey, width: 1.0),
              borderRadius: BorderRadius.circular(4.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide:
              const BorderSide(color: Colors.orangeAccent, width: 1.0),
              borderRadius: BorderRadius.circular(4.0),
            ),
            suffixIcon: IconButton(
              icon: Icon(obSecureText ? iconOff : iconOn),
              color: Colors.black,
              onPressed: () {
                setState(() {
                  obSecureText = obSecureText ? false : true;
                });
              },
            )),
      ),
    );
  }

  Widget passwordConfirmField() {
    return Padding(
      padding: EdgeInsets.only(left: 16, right: 16, top: 16),
      child: TextFormField(
        keyboardType: TextInputType.number,
        obscureText: obSecureTextConfirm,
        controller: passConfirmController,
        validator: Validators.compose([
          Validators.required(
              AppLocalizations.of(context).translate("error_field")),
          Validators.minLength(
              9,
              AppLocalizations.of(context)
                  .translate("error_pass_validate_less")),
          Validators.maxLength(
              15,
              AppLocalizations.of(context)
                  .translate("error_pass_validate_more"))
        ]),
        decoration: InputDecoration(
            labelText:
            AppLocalizations.of(context).translate("hint_password_confirm"),
            labelStyle: TextStyle(color: Colors.grey, fontFamily: "Cairo"),
            contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
            border: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.grey, width: 1.0),
              borderRadius: BorderRadius.circular(4.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide:
              const BorderSide(color: Colors.orangeAccent, width: 1.0),
              borderRadius: BorderRadius.circular(4.0),
            ),
            suffixIcon: IconButton(
              icon: Icon(obSecureTextConfirm ? iconOff : iconOn),
              color: Colors.black,
              onPressed: () {
                setState(() {
                  obSecureTextConfirm = obSecureTextConfirm ? false : true;
                });
              },
            )),
      ),
    );
  }

  Widget signUpButton() {
    return Padding(
        padding: EdgeInsets.only(left: 16, right: 16, top: 64, bottom: 40),
        child: RaisedButton(
          color: Colors.orangeAccent,
          textColor: Colors.white,
          onPressed: () {
            if (formKey.currentState.validate()) {
              if(passController.text==passConfirmController.text){
                vm.user=ApiResponse.empty("");
                vm.error="";
                Map<String, String> paramaters = new Map();
                paramaters.putIfAbsent("name1", () => name1Controller.text);
                paramaters.putIfAbsent("name2", () => name2Controller.text);
                paramaters.putIfAbsent("email", () => emailController.text);
                paramaters.putIfAbsent("phone", () => phoneController.text);
                paramaters.putIfAbsent("password", () => passController.text);
                paramaters.putIfAbsent("password_confirmation", () => passConfirmController.text);
                Provider.of<SignUpViewModel>(context,listen: false).postData(paramaters);
              }
              else{
                vm.user=ApiResponse.error(AppLocalizations.of(context).translate("error_match"));
                vm.error=AppLocalizations.of(context).translate("error_match");
                vm.notifyListeners();
              }
            }
          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          child: MyText(
            "register",
            style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontFamily: "Cairo",
                fontWeight: FontWeight.w700),
          ),
        ));
  }


  errorView() {
    return Consumer<SignUpViewModel>(builder: (context, model, child) {
      return Visibility(
        visible: model.user.status == Status.ERROR,
        child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              model.error,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  fontFamily: "Cairo",
                  color: Colors.red),
            )),
      );
    });
  }

  Widget bottomSignUp() {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 1, right: 1, bottom: 16),
              child: MyText(
                "dont_have_account",
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 14,
                    fontFamily: "Cairo",
                    fontWeight: FontWeight.w500),
              ),
            ),
            GestureDetector(
              child: Padding(
                padding: EdgeInsets.only(left: 1, right: 1, bottom: 16),
                child: MyText(
                  "register_new_user",
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 14,
                      fontFamily: "Cairo",
                      fontWeight: FontWeight.w600,
                      decoration: TextDecoration.underline),
                ),
              ),
              onTap: () {
//               Navigator.of(context).push(MaterialPageRoute(
//                   builder: (_) => ChangeNotifierProvider(
//                       create: (context) => SignUpViewModel(),
//                       child: SignUpFirst())));
              },
            )
          ],
        ));
  }




}
