import 'package:bus/dashboard/payment_Screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';

import 'booking_Seating.dart';

class passengerDetails extends StatefulWidget {
  const passengerDetails({Key? key}) : super(key: key);

  @override
  State<passengerDetails> createState() => _passengerDetailsState();
}

class _passengerDetailsState extends State<passengerDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text("pollachi"),
            Icon(Icons.arrow_forward),
            Text("Chennai"),
          ],
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.notifications_active_outlined,
              color: Colors.white,
            ),
            onPressed: () {
              // do something
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 10,right: 10,top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Existing Passenger"),
                    ElevatedButton(
                      child: Text('ADD'),
                      onPressed: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder:
                                (context) =>  paymentScreen()
                            ));
                      },
                    )               ],
                ),
              ),
              Divider(
                thickness: 3,
              ),
                ListTileTheme.merge(
    dense: true,
    child: ListView.builder(
    shrinkWrap: true,
    physics: const NeverScrollableScrollPhysics(),
    itemCount: 4,
    itemBuilder: (BuildContext context, int index) {
        return Container(
          margin: EdgeInsets.only(left: 10, right: 9),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 10.0, right: 5, bottom: 10, top: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0,left: 15),
                    child: Row(
                      children: [
                        Icon(Icons.adjust_rounded),
                        Spacer(),
                        Text("Venkata Ashok Kumar"),

                      ],
                    ),
                  ),
                  Dash(
                      direction: Axis.horizontal,
                      length: 350,
                      dashLength: 8,
                      dashColor: Colors.grey),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("DOB:12-12-2012"),
                        Text("ID:COIPA-4AAAAAA")
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("BLOOD :o+ve"),
                        Text("AGE:23")
                      ],
                    ),
                  ),
                  Dash(
                      direction: Axis.horizontal,
                      length: 350,
                      dashLength: 8,
                      dashColor: Colors.grey),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text("Address :"),
                  ),
                  SizedBox(height: 5,),
                  Text("Banglore,Banglore city ", maxLines: 3,style: TextStyle(color: Color(0xff000000),fontSize: 14),),
                  SizedBox(height: 5,),

                  Text("Email:bond007@gmail.com"),
                  SizedBox(height: 5,),

                  Text("Mobile : 99090900966")
                ],
              ),
            ),
          ),
        );
    }),
                )],
          ),
        ),
      ),
    );
  }
}
