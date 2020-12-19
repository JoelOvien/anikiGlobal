import 'package:flutter/material.dart';

class MeetingDetails extends StatefulWidget {
  @override
  _MeetingDetailsState createState() => _MeetingDetailsState();
}

class _MeetingDetailsState extends State<MeetingDetails> {
  String dummy =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.9),
      appBar: AppBar(
        backgroundColor: Colors.white.withOpacity(0.9),
        elevation: 0,
        title: Text(
          "Meeting at Next Counsel",
          style: TextStyle(
            color: Colors.indigo,
          ),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.cancel,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView(
        children: [
          Container(
            height: 50,
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.red,
                  ),
                ),
                SizedBox(width: 10),
                // Padding(
                // padding: const EdgeInsets.only(left: 3.0, right: 3),
                // child:
                Expanded(child: Text("Nov, 13, 2020")),
                // ),
                Text(
                  "18:00",
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              color: Colors.white,
              padding: EdgeInsets.all(10),
              child: Text(
                "$dummy\n\n$dummy",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
            ),
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 30,
                decoration: BoxDecoration(
                  border: Border.all(),
                ),
                child: FlatButton(
                  onPressed: () {},
                  child: Text("Edit Details"),
                ),
              ),
              Container(
                height: 30,
                decoration: BoxDecoration(
                  border: Border.all(),
                ),
                child: FlatButton(
                  onPressed: () {},
                  child: Text("Delete"),
                ),
              )
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.4,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 8, 8, 20),
            child: Container(
              height: 40,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(),
              ),
              child: FlatButton(
                height: 40,
                onPressed: () {},
                child: Text("CANCEL"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
