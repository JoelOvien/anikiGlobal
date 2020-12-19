import 'package:anikiGlobal/widgets.dart';
import 'package:flutter/material.dart';

class RatingsReviews extends StatefulWidget {
  @override
  _RatingsReviewsState createState() => _RatingsReviewsState();
}

class _RatingsReviewsState extends State<RatingsReviews> {
  bool rememberMe = false;
  var checkBoxValue = false;

  void _onRememberMeChanged(bool newValue) => setState(() {
        rememberMe = newValue;

        if (rememberMe) {
          print("hey");
          // TODO: Here goes your functionality that remembers the user.
        } else {
          print("hi");
          // TODO: Forget the user
        }
      });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.blueAccent,
        onPressed: () {},
        label: Text("Write a review"),
        icon: Icon(Icons.edit),
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15.0, 2, 15, 8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Rating&Reviews",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0, bottom: 15),
                child: Container(
                  height: 150,
                  child: Container(
                    child: Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "4.3",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "23 ratings",
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: drawStars(),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15.0, 2, 15, 8),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "8 reviews",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 40,
                            fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          Checkbox(
                              value: rememberMe,
                              onChanged: _onRememberMeChanged),
                          Text("With photo"),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              ReviewCardWithPhoto(
                name: "Helene Moore",
                comment:
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus diam lacus, convallis nec felis et, convallis gravida augue. Ut semper, purus vel hendrerit consequat, nisi massa venenatis nisl, sit amet molestie risus risus quis tellus. Etiam quis ultrices felis. Aliquam consectetur est nec posuere lacinia. Cras pharetra enim neque, eu gravida nibh posuere vel. Maecenas quis porttitor neque. Nunc vel sollicitudin felis. Aenean eleifend cursus odio ac placerat. Cras quis lectus non ex consequat finibus quis eget sem. Praesent venenatis sem ut urna fermentum, eu facilisis ipsum volutpat. ",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ReviewCardWithoutPhoto extends StatelessWidget {
  final String name;
  final String date;
  final String image;
  final String comment;

  ReviewCardWithoutPhoto({this.name, this.comment, this.date, this.image});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            // height: 100,
            child: Card(
              elevation: 10,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 35, 20, 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          size: 15,
                          color: Color(0xFFFFE600),
                        ),
                        Icon(
                          Icons.star,
                          size: 15,
                          color: Color(0xFFFFE600),
                        ),
                        Icon(
                          Icons.star,
                          size: 15,
                          color: Color(0xFFFFE600),
                        ),
                        Icon(
                          Icons.star,
                          size: 15,
                          color: Color(0xFFFFE600),
                        ),
                        Icon(
                          Icons.star_border,
                          size: 15,
                          // color: Color(0xFFFFE600),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Text(comment),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/ava.png"),
            ),
          ),
        ],
      ),
    );
  }
}

class ReviewCardWithPhoto extends StatelessWidget {
  final String name;
  final String date;
  final String image;
  final String comment;

  ReviewCardWithPhoto({this.name, this.comment, this.date, this.image});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            // height: 100,
            child: Card(
              elevation: 10,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 35, 20, 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          size: 15,
                          color: Color(0xFFFFE600),
                        ),
                        Icon(
                          Icons.star,
                          size: 15,
                          color: Color(0xFFFFE600),
                        ),
                        Icon(
                          Icons.star,
                          size: 15,
                          color: Color(0xFFFFE600),
                        ),
                        Icon(
                          Icons.star,
                          size: 15,
                          color: Color(0xFFFFE600),
                        ),
                        Icon(
                          Icons.star_border,
                          size: 15,
                          // color: Color(0xFFFFE600),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Text(comment),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(6)),
                                height: 95,
                                width: 95,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(6)),
                                height: 95,
                                width: 95,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(6)),
                                height: 95,
                                width: 95,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(6)),
                                height: 95,
                                width: 95,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/ava.png"),
            ),
          ),
        ],
      ),
    );
  }
}
