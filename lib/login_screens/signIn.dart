import 'package:bus/dashboard/main_dashboard.dart';
import 'package:bus/login_screens/login.dart';
import 'package:bus/utils/services/constants.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

import '../utils/services/custom_widget.dart';
import '../utils/services/shared_pref.dart';

class signIn extends StatefulWidget {
  const signIn({Key? key}) : super(key: key);

  @override
  _signInState createState() => _signInState();
}

class _signInState extends State<signIn> {
  String _errorMessage="";

  late TextEditingController passwordController = TextEditingController();
  late TextEditingController usernameController = TextEditingController();
  late TextEditingController emailController = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/register.png'), fit: BoxFit.cover),
      ),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,

          body: Stack(
            children: [
              Container(
                padding: EdgeInsets.only(left: 35, top: 30),
                child: Text(
                  'Create\nAccount',
                  style: TextStyle(color: Colors.black, fontSize: 33),
                ),
              ),
              SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.28),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 35, right: 35),
                        child: Column(
                          children: [
                            TextField(
                              controller: usernameController,

                              style: TextStyle(color: Colors.black),
                              decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                      color: Colors.black,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                      color: Colors.black,
                                    ),
                                  ),
                                  hintText: "Name",
                                  hintStyle: TextStyle(color: Colors.black),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  )),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            TextField(
                              controller: emailController,
                              style: TextStyle(color: Colors.black),
                              onChanged: (val){
                                validateEmail(val);
                              },
                              decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                      color: Colors.black,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                      color: Colors.black,
                                    ),
                                  ),
                                  hintText: "Email",
                                  hintStyle: TextStyle(color: Colors.black),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  )),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            TextField(
                              controller: passwordController,
                              style: TextStyle(color: Colors.black),
                              obscureText: true,
                              decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                      color: Colors.black,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                      color: Colors.black,
                                    ),
                                  ),
                                  hintText: "Password",
                                  hintStyle: TextStyle(color: Colors.black),
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
                                  'Sign Up',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 27,
                                      fontWeight: FontWeight.w700),
                                ),
                                CircleAvatar(
                                  radius: 30,
                                  backgroundColor: Color(0xff4c505b),
                                  child: IconButton(
                                      color: Colors.black,
                                      onPressed: () async{
                                        SharedPreferenceUtil util =
                                        SharedPreferenceUtil();
                                        await util.setString(
                                            sp_email, emailController.text);
                                        await util.setString(
                                            sp_pass, passwordController.text);

                                        if(usernameController.text.trim().isEmpty || passwordController.text.trim().isEmpty || passwordController.text.trim() == 5 || emailController.text.trim().isEmpty ){
                                          CustomWidgets.getToast(message: "Please fill all required fields", color:  Colors.red);

                                        }else if(usernameController.text.trim().isEmpty || passwordController.text.trim().isEmpty || passwordController.text.trim() == 5 || emailController.text.trim().isEmpty ){
                                          CustomWidgets.getToast(message: "Please fill all required fields", color:  Colors.red);


                                        }else{
                                          Navigator.push(
                                              context, MaterialPageRoute(builder: (_) => Login()));
                                        }



                                        // SharedPreferenceUtil util =
                                        // SharedPreferenceUtil();
                                        // await util.setString(
                                        //     sp_email, usernameController.text);
                                        // await util.setString(
                                        //     sp_pass, passwordController.text);
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
                            // Row(
                            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //   children: [
                            //     TextButton(
                            //       onPressed: () {
                            //
                            //         Navigator.pushReplacement(context,
                            //             MaterialPageRoute(builder:
                            //                 (context) => Login(usernameController.text,passwordController.text)
                            //             ));
                            //       },
                            //       child: Text(
                            //         'Sign In',
                            //         textAlign: TextAlign.left,
                            //         style: TextStyle(
                            //             decoration: TextDecoration.underline,
                            //             color: Colors.black,
                            //             fontSize: 18),
                            //       ),
                            //       style: ButtonStyle(),
                            //     ),
                            //   ],
                            // )
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