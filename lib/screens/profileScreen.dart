import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget trailing = Icon(Icons.arrow_forward_ios, size: 13);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(45),
        child: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          actions: [
            IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(left: 1.0, right: 1),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0, bottom: 8),
                child: Text(
                  "My profile",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: ListTile(
                  contentPadding: EdgeInsets.all(0),
                  leading: CircleAvatar(
                    radius: 30,
                  ),
                  title: Text(
                    "Matilda Brown",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  subtitle: Text("matildabrown@mail.com"),
                ),
              ),
              SizedBox(height: 10),
              ListTile(
                title: Text(
                  "My orders",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 17),
                ),
                subtitle: Text("Already have 12 orders"),
                trailing: Icon(Icons.arrow_forward_ios, size: 13),
              ),
              ListTile(
                title: Text(
                  "Shipping address",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 17),
                ),
                subtitle: Text("3 addresses"),
                trailing: Icon(Icons.arrow_forward_ios, size: 13),
              ),
              ListTile(
                title: Text(
                  "Payment methods",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 17),
                ),
                subtitle: Text("Visa **34"),
                trailing: Icon(Icons.arrow_forward_ios, size: 13),
              ),
              ListTile(
                title: Text(
                  "Promo codes",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 17),
                ),
                subtitle: Text("You have special promocodes"),
                trailing: Icon(Icons.arrow_forward_ios, size: 13),
              ),
              ListTile(
                title: Text(
                  "My reviews",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 17),
                ),
                subtitle: Text("Reviews for 4 items"),
                trailing: Icon(Icons.arrow_forward_ios, size: 13),
              ),
              ListTile(
                title: Text(
                  "Settings",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 17),
                ),
                subtitle: Text("Notifications, password"),
                trailing: Icon(Icons.arrow_forward_ios, size: 13),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Material(
                  elevation: 20,
                  borderRadius: BorderRadius.circular(6),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.25,
                    decoration: BoxDecoration(
                        // color: Colors.grey,
                        ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Order No1947034",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17),
                              ),
                              Text(
                                "05-12-2019",
                                style: TextStyle(
                                    color: Colors.grey,
                                    // fontWeight: FontWeight.bold,
                                    fontSize: 13),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Text(
                                "Tracking Number:    ",
                                style: TextStyle(
                                    color: Colors.grey,
                                    // fontWeight: FontWeight.bold,
                                    fontSize: 15),
                              ),
                              Text(
                                "IW3475453455",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15),
                              ),
                            ],
                          ),
                          SizedBox(height: 8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Quantity:    ",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        // fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                  Text(
                                    "3",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 15),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Total Amount:  ",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        // fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                  Text(
                                    "112\$",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 15),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 25),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 30,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.black,
                                  ),
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: FlatButton(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  // color: Colors.grey,
                                  onPressed: () {},
                                  child: Text("Details"),
                                ),
                              ),
                              Text(
                                "Delivered",
                                style: TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 13),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
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
