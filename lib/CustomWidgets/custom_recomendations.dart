import 'package:flutter/material.dart';

class CustomRecomendations extends StatelessWidget {
  CustomRecomendations({this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 16),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        color: Colors.blue[100],
      ),
      child: Text(text),
    );
  }
}
