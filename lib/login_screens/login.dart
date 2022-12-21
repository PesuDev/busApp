import 'package:bus/dashboard/main_dashboard.dart';
import 'package:bus/login_screens/signIn.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

import '../utils/services/constants.dart';
import '../utils/services/custom_widget.dart';
import '../utils/services/shared_pref.dart';

class Login extends StatefulWidget {

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();

String _errorMessage="";
  late TextEditingController passwordController = TextEditingController();
  late TextEditingController usernameController = TextEditingController();
  SharedPreferenceUtil preferenceUtil=SharedPreferenceUtil();


  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: BoxDecoration(
      //   image: DecorationImage(
      //       image: AssetImage('assets/login.png'), fit: BoxFit.cover),
      // ),
      child: Scaffold(
        backgroundColor: Color(0xffFFFFFF),
        body: Form(
          key: _formKey,
          child: Stack(
            children: [
              Container(),
              Container(
                padding: EdgeInsets.only(left: 35, top: 130),
                child: Text(
                  'Welcome\nBack',
                  style: TextStyle(color: Colors.black, fontSize: 33),
                ),
              ),
              SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 35, right: 35),
                        child: Column(
                          children: [
                            TextFormField(
                              style: TextStyle(),
                              autovalidateMode: AutovalidateMode.onUserInteraction,
                              obscureText: true,
                              controller: usernameController,
                              // validator: (String? value) {
                              //   if (value!.length<6) {
                              //     return 'Please enter your 6 digit password';
                              //   }
                              //   return null;
                              // },
                              decoration: InputDecoration(
                                  fillColor: Colors.grey.shade100,
                                  filled: true,
                                  hintText: "Email",
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  )),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            TextFormField(
                              style: TextStyle(),
                              autovalidateMode: AutovalidateMode.onUserInteraction,
                              obscureText: true,
                              controller: passwordController,
                              // validator: (String? value) {
                              //   if (value!.length<6) {
                              //     return 'Please enter your 6 digit password';
                              //   }
                              //   return null;
                              // },
                              decoration: InputDecoration(
                                  fillColor: Colors.grey.shade100,
                                  filled: true,
                                  hintText: "Password",
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  )),
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Sign in',
                                  style: TextStyle(
                                      fontSize: 27, fontWeight: FontWeight.w700),
                                ),
                                CircleAvatar(
                                  radius: 30,
                                  backgroundColor: Color(0xff4c505b),
                                  child: IconButton(
                                      color: Colors.white,
                                      onPressed: ()async {
                                       var email=await preferenceUtil.getString(sp_email);
                                      var  pass=await preferenceUtil.getString(sp_pass);
                                      print(email);
                                      print(pass);

                                       if(email==usernameController.text.toString() && pass==passwordController.text.toString()){
                                         Navigator.push(
                                                  context, MaterialPageRoute(builder: (_) => DashBoard()));

                                       }else if(email!=usernameController.text.toString() && pass!=passwordController.text.toString()){
                                         CustomWidgets.getToast(message: "Please fill all required fields", color:  Colors.red);


                                       }


                                        // if(email==usernameController.text.toString() && pass==passwordController.text.toString()){
                                        //   Navigator.push(
                                        //       context, MaterialPageRoute(builder: (_) => DashBoard()));
                                        // }
                                        // else if(usernameController.text.isEmpty && passwordController.text.isEmpty){
                                        //   CustomWidgets.getToast(message: "Please enter vaild emailid and password", color:  Colors.red);                                        }
                                        //

                                      },
                                      icon: Icon(
                                        Icons.arrow_forward,
                                      )),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.pushReplacement(context,
                                        MaterialPageRoute(builder:
                                    (context) => signIn()
                                    ));
                                  },
                                  child: Text(
                                    'Sign Up',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        decoration: TextDecoration.underline,
                                        color: Color(0xff4c505b),
                                        fontSize: 18),
                                  ),
                                  style: ButtonStyle(),
                                ),
                                TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      'Forgot Password',
                                      style: TextStyle(
                                        decoration: TextDecoration.underline,
                                        color: Color(0xff4c505b),
                                        fontSize: 18,
                                      ),
                                    )),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void validateEmail(String val) {
    if(val.isEmpty){
      setState(() {
        _errorMessage = "Email can not be empty";
      });
    }else if(!EmailValidator.validate(val, true)){
      setState(() {
        _errorMessage = "Invalid Email Address";
      });
    }else{
      setState(() {

        _errorMessage = "";
      });
    }
  }
}