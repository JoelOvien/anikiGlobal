import 'package:anikiGlobal/main.dart';
import 'package:flutter/material.dart';
import 'package:mdi/mdi.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CounterModel {
  const CounterModel(this.count);
  final int count;
}

class CounterNotifier extends StateNotifier<CounterModel> {
  CounterNotifier() : super(_initialValue);
  static const _initialValue = CounterModel(0);
  void increment() {
    state = CounterModel(state.count + 1);
  }

  void decrement() {
    state = CounterModel(state.count - 1);
  }
}

class JumiaPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final counterModel = useProvider(provider.state);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text("Cart"),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              SizedBox(height: 10),
              Container(
                child: Card(
                  elevation: 2,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Container(height: 73, width: 55, color: Colors.orange),
                            SizedBox(width: 10),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Need For Speed Payback - PlayStation 4",
                                    style:
                                        TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: 35),
                                  Text(
                                    "#9,500",
                                    style: TextStyle(color: Colors.orange),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(1.0),
                        child: Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.favorite_border, color: Colors.orange),
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.delete,
                                      color: Colors.orange,
                                      size: 19,
                                    ),
                                    SizedBox(width: 3),
                                    Center(
                                      child: Text(
                                        "REMOVE",
                                        style: TextStyle(fontSize: 12, color: Colors.orange),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Spacer(),
                            GestureDetector(
                              onTap: () {
                                context.read(provider).decrement();
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.remove_circle,
                                  size: 20,
                                  color: Colors.orange,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 15,
                                width: 15,
                                child: Center(
                                    child: Text(
                                  '${counterModel.count}',
                                )),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                context.read(provider).increment();
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.add_circle,
                                  size: 20,
                                  color: Colors.orange,
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                child: Column(
                  children: [
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text("Total"),
                          Text(
                            "#9,500",
                            style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        child: RaisedButton(
                          elevation: 0,
                          onPressed: () {},
                          color: Colors.orange,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Text(
                            "COMPLETE YOUR ORDER",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.orange),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: RaisedButton(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),
                          color: Colors.white,
                          onPressed: () {},
                          child: Text(
                            "CALL TO ORDER",
                            style: TextStyle(color: Colors.orange),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
// class JumiaPage extends HookWidget {
//   @override
//   _JumiaPageState createState() => _JumiaPageState();
// }

// class _JumiaPageState extends State<JumiaPage> {
//   @override
//   Widget build(BuildContext context) {

//   }
// }

class JumiaProfile extends StatefulWidget {
  @override
  _JumiaProfileState createState() => _JumiaProfileState();
}

class _JumiaProfileState extends State<JumiaProfile> {
  int isSelected = -1;
  int _value = 1;
  _isSelected(int index) {
    setState(() {
      isSelected = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text("My Profile"),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart_outlined),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 40,
                width: double.infinity,
                color: Colors.blue.withOpacity(0.1),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10.0, 10, 8, 8),
                  child: Text(
                    "YOUR PERSONAL DATA",
                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          suffixText: "*",
                          // suffixStyle: TextStyle(color: Colors.grey, fontSize: 25),
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.person_outline, color: Colors.grey),
                          labelText: "First Name",
                          labelStyle: TextStyle(color: Colors.grey),
                          hintText: "First Name",
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(49.0, 0, 0, 0),
                        child: Divider(
                          height: 0.3,
                          color: Colors.black,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(49.0, 0, 0, 0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            suffixText: "*",
                            border: InputBorder.none,
                            labelText: "Last Name",
                            labelStyle: TextStyle(color: Colors.grey),
                            hintText: "Last Name",
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(49.0, 0, 0, 0),
                        child: Divider(
                          height: 0.3,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 20),
                      TextFormField(
                        decoration: InputDecoration(
                          // suffix: Text("*"),
                          // suffixStyle: TextStyle(color: Colors.grey),
                          suffixText: "*",
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.mail_outline, color: Colors.grey),
                          labelText: "E-Mail",
                          labelStyle: TextStyle(color: Colors.grey),
                          hintText: "E-Mail",
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(49.0, 0, 0, 0),
                        child: Divider(
                          height: 0.3,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Row(
                    children: [
                      Icon(Mdi.genderMaleFemale, size: 27, color: Colors.grey),
                      SizedBox(width: 10),
                      Expanded(
                        child: Container(
                          child: Row(
                            children: [
                              GestureDetector(
                                onTap: () => _isSelected(0),
                                child: Icon(
                                    isSelected != null && isSelected == 0
                                        ? Mdi.circleSlice8
                                        : Mdi.checkboxBlankCircleOutline,
                                    size: 25,
                                    color: isSelected != null && isSelected == 0
                                        ? Colors.orange
                                        : Colors.grey),
                              ),
                              SizedBox(width: 8),
                              Text(
                                "Male",
                                style: TextStyle(color: Colors.black),
                              ),
                              SizedBox(width: 40),
                              GestureDetector(
                                onTap: () => _isSelected(1),
                                child: Icon(
                                    isSelected != null && isSelected == 1
                                        ? Mdi.circleSlice8
                                        : Mdi.checkboxBlankCircleOutline,
                                    size: 25,
                                    color: isSelected != null && isSelected == 1
                                        ? Colors.orange
                                        : Colors.grey),
                              ),
                              SizedBox(width: 8),
                              Text(
                                "Female",
                                style: TextStyle(color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Row(
                    children: [
                      Icon(Icons.call_outlined, size: 25, color: Colors.grey),
                      SizedBox(width: 10),
                      Expanded(
                        child: Container(
                          child: Row(
                            children: [
                              SizedBox(width: 8),
                              Container(
                                width: 70,
                                height: 50,
                                // child: TextFormField(),
                                child: DropdownButton(
                                    value: _value,
                                    items: [
                                      DropdownMenuItem(
                                        child: Text("+234"),
                                        value: 1,
                                      ),
                                      DropdownMenuItem(
                                        child: Text("+213"),
                                        value: 2,
                                      ),
                                      DropdownMenuItem(child: Text("+256"), value: 3),
                                      DropdownMenuItem(child: Text("+123"), value: 4)
                                    ],
                                    onChanged: (value) {
                                      setState(() {
                                        _value = value;
                                      });
                                    }),
                              ),
                              // ),
                              SizedBox(width: 20),
                              Container(
                                width: 210,
                                height: 55,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    labelText: "Mobile Phone Number",
                                    labelStyle: TextStyle(color: Colors.grey),
                                    hintText: "Phone Number",
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 45,
                  width: double.infinity,
                  child: RaisedButton(
                    elevation: 0,
                    onPressed: () {},
                    color: Colors.orange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(1),
                    ),
                    child: Text(
                      "SAVE",
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 40,
                width: double.infinity,
                color: Colors.blue.withOpacity(0.1),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "Password",
                    style:
                        TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: "Current Password",
                          labelStyle: TextStyle(color: Colors.grey),
                          hintText: "Current Password",
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: "Password",
                          labelStyle: TextStyle(color: Colors.grey),
                          hintText: "Password",
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 45,
                        width: double.infinity,
                        child: RaisedButton(
                          elevation: 0,
                          onPressed: () {},
                          color: Colors.orange,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(1),
                          ),
                          child: Text(
                            "CHANGE PASSWORD",
                            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
