import 'package:boot_camp/models/product_model.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  static const routeName = '/productdetails';

  @override
  Widget build(BuildContext context) {
    final ProductDataModel args = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(args.img),
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
