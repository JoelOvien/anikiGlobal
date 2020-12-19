import 'package:flutter/material.dart';

class BankStuff1 extends StatefulWidget {
  @override
  _BankStuff1State createState() => _BankStuff1State();
}

class _BankStuff1State extends State<BankStuff1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 45),
              Container(
                height: 50,
                width: 200,
                child: Text(
                  "Dial this code to make transaction",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey, fontSize: 20),
                ),
              ),
              SizedBox(height: 15),
              Container(
                height: 30,
                width: 210,
                color: Colors.grey.withOpacity(0.1),
                child: Center(
                    child: Text(
                  "*345*756784932*1000#",
                  style: TextStyle(color: Colors.indigo, fontSize: 20),
                )),
              ),
              SizedBox(height: 15),
              Container(
                // height: 30,
                // width: 210,
                // color: Colors.grey.withOpacity(0.1),
                child: Center(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Copy  ",
                      style: TextStyle(color: Colors.indigo, fontSize: 20),
                    ),
                    Icon(Icons.copy, size: 15),
                  ],
                )),
              ),
              SizedBox(height: 15),
              Container(
                height: 40,
                width: 230,
                child: FlatButton(
                  onPressed: () {},
                  color: Colors.indigo,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    "I'VE PAID",
                    style: TextStyle(color: Colors.white, fontSize: 15),
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

class BankStuff2 extends StatefulWidget {
  @override
  _BankStuff2State createState() => _BankStuff2State();
}

class _BankStuff2State extends State<BankStuff2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 45),
              Container(
                height: 50,
                width: 200,
                child: Text(
                  "Make a Transfer into this account",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey, fontSize: 20),
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.only(left: 30.0, right: 30),
                child: Container(
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Amount",
                      labelText: "Amount",
                      border: InputBorder.none,
                    ),
                  ),
                  width: double.infinity,
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 30.0, right: 30),
                child: Container(
                  child: TextFormField(
                    decoration: InputDecoration(
                      suffix: Container(
                        height: 20,
                        width: 50,
                        color: Colors.grey.withOpacity(0.2),
                        child: Center(child: Text("Copy")),
                      ),
                      hintText: "Account Number",
                      labelText: "Account Number",
                      border: InputBorder.none,
                    ),
                  ),
                  width: double.infinity,
                ),
              ),
              SizedBox(height: 20),
              RichText(
                text: TextSpan(
                    text: "Using USSD? ",
                    style: TextStyle(color: Colors.black),
                    children: [
                      TextSpan(
                        text: "Show Code",
                        style: TextStyle(color: Colors.indigo),
                      ),
                    ]),
              ),
              // Spacer(),
              SizedBox(height: 65),

              Container(
                height: 40,
                width: 230,
                child: FlatButton(
                  onPressed: () {},
                  color: Colors.indigo,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    "Continue",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
              ),
              // SizedBox(height: 65),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
