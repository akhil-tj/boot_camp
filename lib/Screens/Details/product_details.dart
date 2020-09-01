import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  static const routeName = '/productdetails';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/images/house5.jpg'),
          Container(
            margin: EdgeInsets.fromLTRB(16, 24, 0, 0),
            child: IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                }),
          )
        ],
      ),
    );
  }
}
