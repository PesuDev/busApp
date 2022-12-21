import 'package:bus/login_screens/login.dart';
import 'package:bus/model/bus_model.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:shape_of_view_null_safe/shape_of_view_null_safe.dart';

import '../utils/services/custom_widget.dart';
import 'bus_detail_screen.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  TextEditingController startControleer = TextEditingController();
  String? search = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          automaticallyImplyLeading: false,
          title: Text(
            'oneappplus',
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18,
                color: Color(0xffFFFFFF)),
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
            width: double.infinity,
            child: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  Container(
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 20, right: 20, top: 15),
                      child: Card(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 25),
                              child: TextField(
                                controller: startControleer,
                                onChanged: (String? value) {
                                  setState(() {
                                    search = value.toString();
                                  });
                                },
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Enter Source',
                                ),
                              ),
                            ),
                            Expanded(
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 18.0),
                                    child: Dash(
                                        direction: Axis.horizontal,
                                        length: 100,
                                        dashLength: 8,
                                        dashColor: Colors.grey),
                                  ),
                                  Image.asset(
                                    "assets/images/transfer.png",
                                    fit: BoxFit.cover,
                                    width: 50,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 25),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Enter Destination'),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    height: 150,
                  ), // SizedBox(height: 20,),
                  Container(
                    margin: EdgeInsets.only(left: 10, right: 10, top: 35),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: DottedBorder(
                        color: Colors.grey, //color of dotted/dash line
                        strokeWidth: 2.5, //thickness of dash/dots
                        dashPattern: [6, 6],
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Card(
                              margin: EdgeInsets.only(top: 10, bottom: 10),
                              color: Colors.blue,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 20.0, top: 9, bottom: 9, right: 20),
                                child: Row(
                                  children: [
                                    Icon(Icons.bus_alert),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text("Bus"),
                                  ],
                                ),
                              ),
                            ),
                            Card(
                              margin: EdgeInsets.only(top: 10, bottom: 10),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 20.0, top: 9, bottom: 9, right: 20),
                                child: Row(
                                  children: [
                                    Icon(Icons.train_outlined),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text("Train"),
                                  ],
                                ),
                              ),
                            ),
                            Card(
                              margin: EdgeInsets.only(top: 10, bottom: 10),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 20.0, top: 9, bottom: 9, right: 20),
                                child: Row(
                                  children: [
                                    Icon(Icons.flight),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text("Flight"),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      if(startControleer.text.trim().isEmpty){
                        CustomWidgets.getToast(message: "Please Enter source and destination", color:  Colors.red);

                      }else{
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    busScreen(startControleer.text)));
                      }
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 10, right: 10, top: 35),
                      width: double.infinity,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: DottedBorder(
                          color: Colors.grey, //color of dotted/dash line
                          strokeWidth: 2.5, //thickness of dash/dots
                          dashPattern: [6, 6],
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(6)),
                            margin: EdgeInsets.all(10),
                            height: 40,
                            width: double.infinity,
                            child: Center(
                              child: Text(
                                ("Search Buses"),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 18, left: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [Text("Previous Trip's")],
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(left: 10, right: 10, top: 15),
                    child: ListTileTheme.merge(
                      dense: true,
                      child: ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: 2,
                          itemBuilder: (BuildContext context, int index) {
                            return Card(
                              child: DottedBorder(
                                color: Colors.grey,
                                //color of dotted/dash line
                                strokeWidth: 2.5,
                                //thickness of dash/dots
                                dashPattern: [4, 4],
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text(
                                          "MAA ",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 16,
                                              fontFamily: 'Open Sans',
                                              color: Color(0xff333333)),
                                        ),
                                        Icon(Icons.arrow_forward),
                                        Text(
                                          "PAT",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 16,
                                              fontFamily: 'Open Sans',
                                              color: Color(0xff333333)),
                                        ),
                                        SizedBox(
                                          height: 55,
                                        )
                                      ],
                                    ),
                                    Dash(
                                        direction: Axis.horizontal,
                                        length: 320,
                                        dashLength: 8,
                                        dashColor: Colors.grey),
                                    Stack(children: [
                                      Positioned(
                                        child: Icon(Icons.flight),
                                        left: 200,
                                        top: 45,
                                      ),
                                      Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 8.0, left: 8, right: 8),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text("Date:27-12-2022"),
                                                Image.asset(
                                                  "assets/images/Barcode-PNG-Transparent.png",
                                                  fit: BoxFit.cover,
                                                  width: 70,
                                                ),
                                              ],
                                            ),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                  left: 8.0,
                                                  right: 8,
                                                ),
                                                child: Text("Date:27-12-2022"),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 12.0, right: 8),
                                                child: Text("RS.2000"),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ]),
                                    SizedBox(
                                      height: 40,
                                    )
                                  ],
                                ),
                              ),
                            );
                          }),
                    ),
                  ),
                ]))));
  }
}
