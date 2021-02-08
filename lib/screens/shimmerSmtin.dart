import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerSmtin extends StatefulWidget {
  @override
  _ShimmerSmtinState createState() => _ShimmerSmtinState();
}

class _ShimmerSmtinState extends State<ShimmerSmtin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(height: 100),
            //I only created the shimmer cards...I think that is what you needed right?
            Padding(
              padding: const EdgeInsets.only(left: 25.0, right: 25),
              child: Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Shimmer.fromColors(
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  baseColor: Colors.grey[200],
                  highlightColor: Colors.grey[400],
                ),
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: List.generate(
                3,
                (index) => Padding(
                  padding: const EdgeInsets.only(left: .0, right: 0),
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Shimmer.fromColors(
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      baseColor: Colors.grey[200],
                      highlightColor: Colors.grey[400],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
