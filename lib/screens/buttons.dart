import 'package:flutter/material.dart';

class Buttons extends StatefulWidget {
  @override
  _ButtonsState createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Amount",
                style: TextStyle(color: Colors.indigo, fontSize: 20),
              ),
              SizedBox(height: 10),
              Text(
                "0",
                style: TextStyle(color: Colors.black, fontSize: 30),
              ),
              SizedBox(height: 20),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 50,
                            width: 50,
                            child: FlatButton(
                              onPressed: () {},
                              color: Colors.white,
                              shape:
                                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                              child: Text(
                                "1",
                                style: TextStyle(color: Colors.indigo, fontSize: 30),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 50,
                            width: 50,
                            child: FlatButton(
                              onPressed: () {},
                              color: Colors.white,
                              shape:
                                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                              child: Text(
                                "2",
                                style: TextStyle(color: Colors.indigo, fontSize: 30),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 50,
                            width: 50,
                            child: FlatButton(
                              onPressed: () {},
                              color: Colors.white,
                              shape:
                                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                              child: Text(
                                "3",
                                style: TextStyle(color: Colors.indigo, fontSize: 30),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 50,
                            width: 50,
                            child: FlatButton(
                              onPressed: () {},
                              color: Colors.white,
                              shape:
                                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                              child: Text(
                                "4",
                                style: TextStyle(color: Colors.indigo, fontSize: 30),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 50,
                            width: 50,
                            child: FlatButton(
                              onPressed: () {},
                              color: Colors.white,
                              shape:
                                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                              child: Text(
                                "5",
                                style: TextStyle(color: Colors.indigo, fontSize: 30),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 50,
                            width: 50,
                            child: FlatButton(
                              onPressed: () {},
                              color: Colors.white,
                              shape:
                                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                              child: Text(
                                "6",
                                style: TextStyle(color: Colors.indigo, fontSize: 30),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 50,
                            width: 50,
                            child: FlatButton(
                              onPressed: () {},
                              color: Colors.white,
                              shape:
                                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                              child: Text(
                                "7",
                                style: TextStyle(color: Colors.indigo, fontSize: 30),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 50,
                            width: 50,
                            child: FlatButton(
                              onPressed: () {},
                              color: Colors.white,
                              shape:
                                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                              child: Text(
                                "8",
                                style: TextStyle(color: Colors.indigo, fontSize: 30),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 50,
                            width: 50,
                            child: FlatButton(
                              onPressed: () {},
                              color: Colors.white,
                              shape:
                                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                              child: Text(
                                "9",
                                style: TextStyle(color: Colors.indigo, fontSize: 30),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            color: Colors.white,
                            height: 50,
                            width: 50,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 50,
                            width: 50,
                            child: FlatButton(
                              onPressed: () {},
                              color: Colors.white,
                              shape:
                                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                              child: Text(
                                "0",
                                style: TextStyle(color: Colors.indigo, fontSize: 30),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 50,
                            width: 50,
                            child: FlatButton(
                              onPressed: () {},
                              color: Colors.white,
                              shape:
                                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                              child: Icon(Icons.cancel),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 45),
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
            ],
          ),
        ),
      ),
    );
  }
}
