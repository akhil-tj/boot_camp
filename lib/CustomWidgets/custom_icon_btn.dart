import 'package:flutter/material.dart';

class CustomIconBtn extends StatelessWidget {
  IconData myicon;

  CustomIconBtn({this.myicon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black26),
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Icon(myicon),
      ),
    );
  }
}
