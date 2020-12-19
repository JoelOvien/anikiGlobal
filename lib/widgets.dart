import 'package:flutter/material.dart';

Widget drawStars() {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(" "),
          Icon(
            Icons.star,
            color: Color(0xFFFFE600),
            size: 15,
          ),
          Icon(
            Icons.star,
            color: Color(0xFFFFE600),
            size: 15,
          ),
          Icon(
            Icons.star,
            color: Color(0xFFFFE600),
            size: 15,
          ),
          Icon(
            Icons.star,
            color: Color(0xFFFFE600),
            size: 15,
          ),
          Icon(
            Icons.star,
            color: Color(0xFFFFE600),
            size: 15,
          ),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text("      "),
          Icon(
            Icons.star,
            color: Color(0xFFFFE600),
            size: 15,
          ),
          Icon(
            Icons.star,
            color: Color(0xFFFFE600),
            size: 15,
          ),
          Icon(
            Icons.star,
            color: Color(0xFFFFE600),
            size: 15,
          ),
          Icon(
            Icons.star,
            color: Color(0xFFFFE600),
            size: 15,
          ),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text("           "),
          Icon(
            Icons.star,
            color: Color(0xFFFFE600),
            size: 15,
          ),
          Icon(
            Icons.star,
            color: Color(0xFFFFE600),
            size: 15,
          ),
          Icon(
            Icons.star,
            color: Color(0xFFFFE600),
            size: 15,
          ),
        ],
      ),
      Row(
        children: [
          Text("                "),
          Icon(
            Icons.star,
            color: Color(0xFFFFE600),
            size: 15,
          ),
          Icon(
            Icons.star,
            color: Color(0xFFFFE600),
            size: 15,
          ),
        ],
      ),
      Row(
        children: [
          Row(
            children: [
              Text("                     "),
              Icon(
                Icons.star,
                color: Color(0xFFFFE600),
                size: 15,
              ),
            ],
          ),
          SizedBox(width: 50),
          Text("0"),
        ],
      ),
    ],
  );
}
