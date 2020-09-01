import 'package:boot_camp/Screens/Details/product_details.dart';
import 'package:boot_camp/Styles/text_styles.dart';
import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  Product({this.img, this.address, this.price, this.spec});
  final String price, address, spec, img;

  void cardClick(context) {
    Navigator.of(context).pushNamed(ProductDetails.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Stack(
        children: [
          GestureDetector(
            onTap: () => cardClick(context),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(18.0),
                    child: Image.asset(img),
                  ),
                ),
                Row(
                  children: [
                    Text(
                      price,
                      style: largetxt,
                    ),
                    SizedBox(
                      width: 16.0,
                    ),
                    Text(
                      address,
                      style: smalltxt,
                    )
                  ],
                ),
                Text(
                  spec,
                  style: mediumtxt,
                )
              ],
            ),
          ),
          Positioned(
            top: 22,
            right: 16,
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(8)),
              child: Icon(
                Icons.favorite_border,
                color: Colors.black54,
              ),
            ),
          )
        ],
      ),
    );
  }
}
