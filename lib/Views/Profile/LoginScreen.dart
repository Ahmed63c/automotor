import 'package:automotor/Network/BaseAPiRespinse.dart';
import 'package:automotor/Utils/AppLocalization.dart';
import 'package:automotor/ViewModels/LoginViewModel.dart';
import 'package:automotor/ViewModels/SignUpViewModel.dart';
import 'package:automotor/Views/Profile/SignUpScreen.dart';
import 'package:automotor/Widgets/BaseScreen.dart';
import 'package:automotor/Widgets/MyText.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wc_form_validators/wc_form_validators.dart';

class Login extends StatefulWidget {
  @override
  LoginState createState() => LoginState();
}

class LoginState extends State<Login> with BaseScreen{

  bool obSecureText = true;
  IconData iconOn = Icons.visibility;
  IconData iconOff = Icons.visibility_off;
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  bool _validate = false;
  bool _validateEmail = false;
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          brightness: Brightness.light,
          backgroundColor: Colors.white,
          title: MyText(
            'signin',
            style: TextStyle(color: Colors.black),
          ),
          elevation: 2,
        ),
        body:
     Stack(children: [
      LoginView(),
       Consumer<LoginViewModel>(builder: (context, model, child) {
         WidgetsBinding.instance.addPostFrameCallback((_) {
           if (model.userModel.status=="01") {
             model.user.status==Status.empty;
             Navigator.pop(context, () {
               setState(() {});
             });
           }
         });
         return super.loadingIndicator(
             model.user.status == Status.LOADING, context);
       })

     ],)
    );
  }


  Widget LoginView() {
    return Form(
      key: formKey,
      child: ListView(
        children: [
          emailField(),
          passwordField(),
          errorView(),
          signInButton(),
          bottomSignUp()
        ],
      ),
    );
  }

  Widget emailField() {
    return Padding(
      padding: EdgeInsets.only(left: 16, right: 16, top: 30),
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

  Widget signInButton() {
    return Padding(
        padding: EdgeInsets.only(left: 16, right: 16, top: 64, bottom: 40),
        child: RaisedButton(
          color: Colors.orangeAccent,
          textColor: Colors.white,
          onPressed: () {
            if (formKey.currentState.validate()) {
                Map<String, String> paramaters = new Map();
                paramaters.putIfAbsent("email", () => emailController.text);
                paramaters.putIfAbsent("password", () => passController.text);
              Provider.of<LoginViewModel>(context, listen: false)
                  .postData(paramaters);
            }

            // Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=>Home()));
          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          child: MyText(
            "sign_in",
            style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontFamily: "Cairo",
                fontWeight: FontWeight.w700),
          ),
        ));
  }


  errorView() {
    return Consumer<LoginViewModel>(builder: (context, model, child) {
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
               Navigator.of(context).push(MaterialPageRoute(
                   builder: (_) => ChangeNotifierProvider(
                       create: (context) => SignUpViewModel(),
                       child: SignUp())));
             },
           )
         ],
       ));
 }


}
