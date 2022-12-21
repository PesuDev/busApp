import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CustomWidgets{
  static void showLoaderDialog({required BuildContext context, required String message}) {
    AlertDialog alert = AlertDialog(
      content: Row(
        children: [
          CircularProgressIndicator(
              valueColor:AlwaysStoppedAnimation<Color>(Colors.blue)),
          SizedBox(width: 5,),
          Container(
              child: Text('$message...',style: TextStyle(fontFamily: 'Nunito'),)),
        ],
      ),
    );
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return WillPopScope(child: alert, onWillPop: ()async=>false);
      },
    );
  }
  static void showLoaderDialogWithoutText({required BuildContext context}) {
    AlertDialog alert = AlertDialog(
      backgroundColor: Colors.transparent,
      content:
      Center(
        child: CircularProgressIndicator(
            valueColor:AlwaysStoppedAnimation<Color>(Color(0xff0091CD))),
      ),
    );
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return WillPopScope(child: alert, onWillPop: ()async=>false);
      },
    );
  }
  static void getToast({required String message, required Color color}) {
    Fluttertoast.showToast(
        msg: message,

        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: color,
        textColor: Colors.white,
        fontSize: 16.0
    );

  }



  static const colorizeColors = [
    Colors.black,
    Color(0xff7AB02A),
    Colors.black,
    Color(0xff7AB02A),

  ];
  static const colorizeTextStyle = TextStyle(
    fontSize: 14.0,
    fontFamily: 'Horizon',
  );


}