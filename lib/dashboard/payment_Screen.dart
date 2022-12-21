import 'package:bus/dashboard/passenger_detail_screen.dart';
import 'package:bus/dashboard/payment_details.dart';
import 'package:flutter/material.dart';

class paymentScreen extends StatefulWidget {
  const paymentScreen({Key? key}) : super(key: key);

  @override
  State<paymentScreen> createState() => _paymentScreenState();
}

class _paymentScreenState extends State<paymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Payment"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("Payment-Screen"),
            ElevatedButton(
              child: Text('Next'),

              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder:
                        (context) => paymentDetails()
                    ));
              },
            )
          ],
        ),
      ),
    );
  }
}
