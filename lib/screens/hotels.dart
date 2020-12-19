import 'package:flutter/material.dart';

class HotelsScreen extends StatefulWidget {
  @override
  _HotelsScreenState createState() => _HotelsScreenState();
}

class _HotelsScreenState extends State<HotelsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(45),
        child: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            "Hotels",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30),
          ),
        ),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RaisedButton(
                color: Colors.white,
                elevation: 0,
                child: Row(
                  children: [
                    Icon(Icons.sort, size: 18),
                    SizedBox(width: 10),
                    Text("Filters"),
                  ],
                ),
                onPressed: () {},
              ),
              RaisedButton(
                color: Colors.white,
                elevation: 0,
                child: Row(
                  children: [
                    Icon(Icons.thumbs_up_down, size: 18),
                    SizedBox(width: 10),
                    Text(
                      "Price: Lowest to highest",
                      style: TextStyle(
                          color: Colors.black,
                          // fontWeight: FontWeight.bold,
                          fontSize: 10),
                    ),
                  ],
                ),
                onPressed: () {},
              ),
              IconButton(
                // color: Colors.white,
                icon: Icon(Icons.menu, size: 18),
                onPressed: () {},
              ),
            ],
          ),
          SizedBox(height: 50),
          SingleChildScrollView(
            child: Stack(
              children: [
                Container(
                  height: 150,
                  width: double.infinity,
                  child: Stack(
                    children: [
                      Card(
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Stack(
                            children: [
                              Container(
                                height: 150,
                                width: double.infinity,
                                child: Row(
                                  children: [
                                    Container(
                                      height: 100,
                                      width: 90,
                                      decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "LIME",
                                            style: TextStyle(
                                              color: Colors.grey,
                                              // fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            "Swiss Sprint Hotel",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20),
                                          ),
                                          SizedBox(height: 8),
                                          Text(
                                            "79 Ken Saro Wiwa Stadium Road,\nPort Harcourt, Rivers State",
                                            style: TextStyle(
                                              color: Colors.grey,
                                              // fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          SizedBox(height: 8),
                                          Container(
                                            // color: Colors.green,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  "\$32",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 15),
                                                ),
                                                SizedBox(width: 70),
                                                Row(
                                                  children: [
                                                    Icon(
                                                      Icons.star,
                                                      color: Color(0xFFFFE600),
                                                      size: 20,
                                                    ),
                                                    Icon(
                                                      Icons.star,
                                                      color: Color(0xFFFFE600),
                                                      size: 20,
                                                    ),
                                                    Icon(
                                                      Icons.star,
                                                      color: Color(0xFFFFE600),
                                                      size: 20,
                                                    ),
                                                    Icon(
                                                      Icons.star,
                                                      color: Color(0xFFFFE600),
                                                      size: 20,
                                                    ),
                                                    Icon(
                                                      Icons.star,
                                                      color: Color(0xFFFFE600),
                                                      size: 20,
                                                    ),
                                                    Text("(10)"),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Align(
                                child: Icon(
                                  Icons.cancel,
                                  color: Colors.black,
                                ),
                                alignment: Alignment.topRight,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 160,
                    width: double.infinity,
                    child: Align(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 8.0, top: 25),
                        child: CircleAvatar(
                          backgroundColor: Colors.lightBlue,
                          child: Icon(
                            Icons.shop,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      alignment: Alignment.bottomRight,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
