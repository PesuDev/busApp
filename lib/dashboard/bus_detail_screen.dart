import 'package:bus/dashboard/booking_Seating.dart';
import 'package:bus/dashboard/passenger_detail_screen.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';

import '../model/bus_model.dart';

class busScreen extends StatefulWidget {
String? search;
busScreen(this.search);
  @override
  State<busScreen> createState() => _busScreenState();
}

class _busScreenState extends State<busScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text("Pollachi"),
            Icon(Icons.arrow_forward),
            Text("Chennai"),
          ],
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.notifications,
              color: Colors.white,
            ),
            onPressed: () {
              // do something
            },
          )
        ],
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
          decoration: BoxDecoration(
          shape: BoxShape.rectangle,
            border: Border.all( color: Colors.grey)),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0,right: 8),
                      child: Column(
                        children: [
                          Text("WED"),
                          Text("14"),
                        ],
                      ),
                    ),
                    Dash(
                        direction: Axis.vertical,
                        length: 50,
                        dashLength: 8,
                        dashColor: Colors.grey),
                    Padding(
                      padding: const EdgeInsets.only(left: 8,right: 8),
                      child: Column(
                        children: [
                          Text("THU"),
                          Text("15"),
                        ],
                      ),
                    ),
                    Dash(
                        direction: Axis.vertical,
                        length: 50,
                        dashLength: 8,
                        dashColor: Colors.grey),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0,right: 8),
                      child: Column(
                        children: [
                          Text("FRI"),
                          Text("16"),
                        ],
                      ),
                    ),
                    Dash(
                        direction: Axis.vertical,
                        length: 50,
                        dashLength: 8,
                        dashColor: Colors.grey),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0,right: 8),
                      child: Column(
                        children: [
                          Text("SAT"),
                          Text("17"),
                        ],
                      ),
                    ),
                    Dash(
                        direction: Axis.vertical,
                        length: 50,
                        dashLength: 8,
                        dashColor: Colors.grey),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0,right: 8),
                      child: Column(
                        children: [
                          Text("SUN"),
                          Text("18"),
                        ],
                      ),
                    ),
                    Dash(
                        direction: Axis.vertical,
                        length: 50,
                        dashLength: 8,
                        dashColor: Colors.grey),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0,right: 8),
                      child: Column(
                        children: [
                          Text("MON"),
                          Text("19"),
                        ],
                      ),
                    ),
                    Dash(
                        direction: Axis.vertical,
                        length: 50,
                        dashLength: 8,
                        dashColor: Colors.grey),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0,right: 8),
                      child: Column(
                        children: [
                          Text("TUE"),
                          Text("20"),
                        ],
                      ),
                    ),
                    Dash(
                        direction: Axis.vertical,
                        length: 50,
                        dashLength: 8,
                        dashColor: Colors.grey),
                     Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: GestureDetector(
                        onTap: (){
                          showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(2015, 8),
                            lastDate: DateTime(2101),
                          );
                        },
                          child: Icon(Icons.calendar_month,size: 40)),
                    ),

                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Dash(
                    direction: Axis.horizontal,
                    length: 370,
                    dashLength: 8,
                    dashColor: Colors.grey),
              ),

              Container(
                margin: EdgeInsets.only(left: 10, right: 10, top: 10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(Icons.ac_unit),
                        Icon(Icons.ac_unit),
                        Icon(Icons.ac_unit),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 22.0),
                          child: Text("Ac"),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 38.0),
                          child: Text("Sleeper"),
                        ),
                        Text("Semi-Sleeper")
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Dash(
                        direction: Axis.horizontal,
                        length: 370,
                        dashLength: 8,
                        dashColor: Colors.grey),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10, right: 10, top: 15),
                child: ListTileTheme.merge(
                  dense: true,
                  child: ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: buslist.length,
                      itemBuilder: (BuildContext context, int index) {
                        BusModel mylist=buslist[index];
                        if(widget.search!.isEmpty){
                          return   Card(
                            elevation: 10,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                    children: [
                                      Column(
                                        children: [
                                          Text(
                                            mylist.startigTime.toString(),

                                            style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14,
                                                fontFamily: 'Open Sans',
                                                color: Color(0xff333333)),
                                          ),
                                          Container(
                                            color: Colors.grey[300],
                                            child: Text(
                                              mylist.startigPlace.toString(),
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 14,
                                                  fontFamily: 'Open Sans',
                                                  color: Color(0xff333333)),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Column(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    bottom: 8.0, left: 0, top: 10),
                                                child:  Icon(Icons.bus_alert_rounded),
                                              ),
                                              Dash(
                                                  direction: Axis.horizontal,
                                                  length: 70,
                                                  dashLength: 8,
                                                  dashColor: Colors.grey),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 8.0, left: 0),
                                                child:  Text(
                                                  mylist.hours.toString(),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 30,
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Text(
                                            mylist.endTime.toString(),
                                            style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14,
                                                fontFamily: 'Open Sans',
                                                color: Color(0xff333333)),
                                          ),
                                          Container(
                                            color: Colors.grey[300],
                                            child: Text(
                                              mylist.endPlace.toString(),
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 14,
                                                  fontFamily: 'Open Sans',
                                                  color: Color(0xff333333)),
                                            ),
                                          ),
                                        ],
                                      ),
                                      // SizedBox(height: 55,)
                                    ],
                                  ),
                                  Dash(
                                      direction: Axis.horizontal,
                                      length: 350,
                                      dashLength: 8,
                                      dashColor: Colors.grey),
                                  Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 28.0),
                                        child: Container(
                                          margin: EdgeInsets.only(left: 10,right: 10),
                                          child: Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                            children: [
                                              Image.asset(mylist.image.toString(),fit: BoxFit.fitWidth,width: 100),

                                              // Text( mylist.image.toString(),),
Text(mylist.busType.toString(),),                                              Icon(Icons.luggage),
                                              Icon(Icons.emoji_food_beverage_outlined),
                                        Text( ("${"RS:"}""${mylist.amount.toString()}")),
                                              //Text( mylist.amount.toString(),)

                                            ],
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 10,right: 10),
                                        child: Padding(
                                          padding: const EdgeInsets.only(top: 18.0),
                                          child: Row(
                                            // mainAxisAlignment:
                                            //     MainAxisAlignment.spaceBetween,
                                            children: [
                                              Icon(Icons.circle,color: Colors.blue,),
                                              Text(mylist.available.toString(),style: TextStyle(fontSize: 18,color: Colors.deepPurpleAccent),),
                                              Spacer(),
                                              ElevatedButton(
                                                child: Text('Buy Ticket'),
                                                onPressed: () {
                                                  Navigator.push(
                                                      context, MaterialPageRoute(builder: (_) => bookingSeat()));
                                                },
                                              )                                      ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  // SizedBox(
                                  //   height: 35,
                                  // )
                                ],
                              ),
                            ),
                          );
                        }else if(mylist.startigPlace!.toLowerCase().contains(widget.search!.toLowerCase())){
                          return   Card(
                            elevation: 10,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                    children: [
                                      Column(
                                        children: [
                                          Text(
                                            mylist.startigTime.toString(),

                                            style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14,
                                                fontFamily: 'Open Sans',
                                                color: Color(0xff333333)),
                                          ),
                                          Container(
                                            color: Colors.grey[300],
                                            child: Text(
                                              mylist.startigPlace.toString(),
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 14,
                                                  fontFamily: 'Open Sans',
                                                  color: Color(0xff333333)),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Column(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    bottom: 8.0, left: 0, top: 10),
                                                child:  Icon(Icons.bus_alert_rounded),
                                              ),
                                              Dash(
                                                  direction: Axis.horizontal,
                                                  length: 70,
                                                  dashLength: 8,
                                                  dashColor: Colors.grey),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 8.0, left: 0),
                                                child:  Text(
                                                  mylist.hours.toString(),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 30,
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Text(
                                            mylist.endTime.toString(),
                                            style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14,
                                                fontFamily: 'Open Sans',
                                                color: Color(0xff333333)),
                                          ),
                                          Container(
                                            color: Colors.grey[300],
                                            child: Text(
                                              mylist.endPlace.toString(),
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 14,
                                                  fontFamily: 'Open Sans',
                                                  color: Color(0xff333333)),
                                            ),
                                          ),
                                        ],
                                      ),
                                      // SizedBox(height: 55,)
                                    ],
                                  ),
                                  Dash(
                                      direction: Axis.horizontal,
                                      length: 350,
                                      dashLength: 8,
                                      dashColor: Colors.grey),
                                  Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 28.0),
                                        child: Container(
                                          margin: EdgeInsets.only(left: 10,right: 10),
                                          child: Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text( mylist.Date.toString(),),
                                              Text(mylist.busType.toString(),),                                              Icon(Icons.luggage),
                                              Icon(Icons.emoji_food_beverage_outlined),
                                              Text( ("${"RS:"}""${mylist.amount.toString()}")),
                                              //Text( mylist.amount.toString(),)

                                            ],
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 10,right: 10),
                                        child: Padding(
                                          padding: const EdgeInsets.only(top: 18.0),
                                          child: Row(
                                            // mainAxisAlignment:
                                            //     MainAxisAlignment.spaceBetween,
                                            children: [
                                              Icon(Icons.circle,color: Colors.blue,),
                                              Text(mylist.available.toString(),style: TextStyle(fontSize: 18,color: Colors.deepPurpleAccent),),
                                              Spacer(),
                                              ElevatedButton(
                                                child: Text('Buy Ticket'),
                                                onPressed: () {
                                                  Navigator.push(
                                                      context, MaterialPageRoute(builder: (_) => bookingSeat()));
                                                },
                                              )                                      ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  // SizedBox(
                                  //   height: 35,
                                  // )
                                ],
                              ),
                            ),
                          );

                        }else{
                          return Container(
                            child: Text("No Buses Available"),
                          );
                        }

                      }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
