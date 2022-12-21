import 'package:bus/dashboard/passenger_detail_screen.dart';
import 'package:bus/dashboard/payment_Screen.dart';
import 'package:flutter/material.dart';
import 'package:shape_of_view_null_safe/shape_of_view_null_safe.dart';

class bookingSeat extends StatefulWidget {
  const bookingSeat({Key? key}) : super(key: key);

  @override
  State<bookingSeat> createState() => _bookingSeatState();
}

class _bookingSeatState extends State<bookingSeat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
          margin: EdgeInsets.only(top: 30),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    child: Text('LOWER'),
                    onPressed: () {

                    },
                  ),
                  ElevatedButton(
                    child: Text('UPPER'),
                    onPressed: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder:
                              (context) =>  bookingSeat()
                          ));
                    },
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.only(left: 20,right: 20,top: 15),
                height: MediaQuery.of(context).size.height/1,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.only(topRight: Radius.circular(70),topLeft: Radius.circular(70)),
                ),
                child: SingleChildScrollView(
                  physics: NeverScrollableScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 48.0,top: 20),
                        child: Icon(Icons.access_alarm_outlined),
                      ),
                      Container(height: 50,),
                      Padding(
                        padding: const EdgeInsets.only(left: 30,right: 20,top: 30),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.pushReplacement(context,
                                MaterialPageRoute(builder:
                                    (context) =>  passengerDetails()
                                ));
                          },
                          child: ListView.builder(
                            itemExtent: 100.0,
                            shrinkWrap: true,
                            itemCount: 5,
                            itemBuilder: (BuildContext context, int index) {
                              return  SingleChildScrollView(
                                physics: NeverScrollableScrollPhysics(),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          width:42,
                                          height: MediaQuery.of(context).size.height/12,
                                          decoration: BoxDecoration(
                                            border: Border.all(color: Colors.grey),
                                            borderRadius: BorderRadius.only(topRight: Radius.circular(80),topLeft: Radius.circular(80)),
                                          ),
                                          child: Center(child: Text("U-1")),
                                        ), SizedBox(width: 30,),
                                        Container(
                                          width:42,
                                          height: MediaQuery.of(context).size.height/12,
                                          decoration: BoxDecoration(
                                            border: Border.all(color: Colors.grey),
                                            borderRadius: BorderRadius.only(topRight: Radius.circular(80),topLeft: Radius.circular(80)),
                                          ),
                                          child: Center(child: Text("U-2")),

                                        ),
                                        Spacer(),
                                        Container(
                                          width:42,
                                          height: MediaQuery.of(context).size.height/12,
                                          decoration: BoxDecoration(
                                            border: Border.all(color: Colors.grey),
                                            borderRadius: BorderRadius.only(topRight: Radius.circular(80),topLeft: Radius.circular(80)),
                                          ),
                                          child: Center(child: Text("U-3")),

                                        ),
                                        SizedBox(width: 30,),Container(
                                          width:42,
                                          height: MediaQuery.of(context).size.height/12,
                                          decoration: BoxDecoration(
                                            border: Border.all(color: Colors.grey),
                                            borderRadius: BorderRadius.only(topRight: Radius.circular(80),topLeft: Radius.circular(80)),
                                          ),
                                          child: Center(child: Text("U-4")),

                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              );
                            },

                          ),
                        ),
                      ),
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
}
