import 'package:flutter/material.dart';

class MonthCont extends StatefulWidget {
  @override
  _MonthContState createState() => _MonthContState();
}

class _MonthContState extends State<MonthCont> {
  int isSelected =
      -1; // changed bool to int and set value to -1 on first time if you don't select anything otherwise set 0 to set first one as selected.

  _isSelected(int index) {
    //pass the selected index to here and set to 'isSelected'
    setState(() {
      isSelected = index;
    });
  }

  List<String> months = [
    "Jan",
    "Feb",
    "Mar",
    "Apr",
    "May",
    "Jun",
    "Jul",
    "Aug",
    "Sep",
    "Oct",
    "Nov",
    "Dec",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: Colors.white,
        height: 90,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: months.length,
              itemBuilder: (context, i) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () => _isSelected(i),
                    child: Card(
                      elevation: 20,
                      child: Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          color: isSelected != null && isSelected == i ? Colors.blue : Colors.white,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Center(
                          child: Text(
                            months[i].toString(),
                            style: TextStyle(
                              color: isSelected != null && isSelected == i
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              }),
        ),
      ),
    );
  }
}
