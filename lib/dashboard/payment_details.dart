import 'package:flutter/material.dart';

class paymentDetails extends StatefulWidget {
  const paymentDetails({Key? key}) : super(key: key);

  @override
  State<paymentDetails> createState() => _paymentDetailsState();
}
enum Pet { dog, cat }

class _paymentDetailsState extends State<paymentDetails> {

  Pet _pet = Pet.dog;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Payment"),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(top: 18.0),
          child: Column(
            children: [
              Text("Choose Your Payment Method",style: TextStyle(fontSize: 20),),

                Padding(
                  padding: const EdgeInsets.only(top: 18.0),
                  child: ListTile(
                    title: const Text('Credit/Debit Card'),
                    trailing:    Image.asset(
                      "assets/images/credict.png",
                      fit: BoxFit.cover,
                      width: 70,
                    ),

                    leading: Radio<Pet>(
                      value: Pet.dog,
                      groupValue: _pet,
                      onChanged: (Pet? value) {
                        setState(() {
                          _pet = value!;
                        });
                      },
                    ),
                  ),
                ),   ListTile(
                  title: const Text('Cash On Delivery'),
                trailing: Icon(Icons.money),

                leading: Radio<Pet>(
                    value: Pet.dog,
                    groupValue: _pet,
                    onChanged: (Pet? value) {
                      setState(() {
                        _pet = value!;
                      });
                    },
                  ),
                ),   ListTile(
                  title: const Text('UPI'),
                trailing:    Image.asset(
                  "assets/images/upi.png",
                  fit: BoxFit.cover,
                  width: 70,
                ),

                leading: Radio<Pet>(
                    value: Pet.dog,
                    groupValue: _pet,
                    onChanged: (Pet? value) {
                      setState(() {
                        _pet = value!;
                      });
                    },
                  ),

                ),   ListTile(
                  title: const Text('Paypal'),
                trailing:    Image.asset(
                  "assets/images/paypal.png",
                  fit: BoxFit.cover,
                  width: 70,
                ),

                leading: Radio<Pet>(
                    value: Pet.dog,
                    groupValue: _pet,
                    onChanged: (Pet? value) {
                      setState(() {
                        _pet = value!;
                      });
                    },
                  ),
                ),
              ElevatedButton(
                child: Text('Pay'),
                onPressed: () {

                },
              )
            ],
          ),
        ),
        ),
      );
  }
}
