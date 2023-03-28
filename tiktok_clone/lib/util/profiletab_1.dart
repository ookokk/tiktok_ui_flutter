import 'package:flutter/material.dart';

class FirstTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: 4,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.all(2.0),
            child: Container(
              child: Image(
                image: AssetImage("assets/images/post10.jpg"),
              ),
              color: Colors.grey[200],
            ),
          );
        });
  }
}
