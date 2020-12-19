import 'package:flutter/material.dart';

class TapCont extends StatefulWidget {
  @override
  _TapContState createState() => _TapContState();
}

class _TapContState extends State<TapCont> {
  List<String> items = ["A", "B", "C", "D", "E", "F", "D", "J", "K", "L", "M", "P"];
  int isSelected =
      -1; // changed bool to int and set value to -1 on first time if you don't select anything otherwise set 0 to set first one as selected.

  _isSelected(int index) {
    //pass the selected index to here and set to 'isSelected'
    setState(() {
      isSelected = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        padding: EdgeInsets.only(left: 25.0),
        child: new ListView.builder(
          itemCount: items.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: EdgeInsets.all(6.0),
              child: Column(
                children: <Widget>[
                  GestureDetector(
                    onTap: () => _isSelected(index), //pass index value to '_isSelected'
                    child: Container(
                        width: 300.0,
                        padding: EdgeInsets.all(3.0),
                        color: isSelected != null &&
                                isSelected ==
                                    index //set condition like this. voila! if isSelected and list index matches it will colored as white else orange.
                            ? Colors.white
                            : Colors.orange,
                        child: new Text(items[index])),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
