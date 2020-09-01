import 'package:boot_camp/CustomWidgets/custom_app_bar.dart';
import 'package:boot_camp/CustomWidgets/custom_floating_btn.dart';
import 'package:boot_camp/CustomWidgets/custom_recomendations.dart';
import 'package:boot_camp/CustomWidgets/product.dart';
import 'package:boot_camp/Screens/Details/product_details.dart';
import 'package:flutter/material.dart';
import 'package:boot_camp/Styles/text_styles.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: CustomFloatingButton(),
        body: SafeArea(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomAppBar(),
                  Text(
                    'City',
                    style: smalltxt,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'San Francisco',
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 28.0,
                            fontWeight: FontWeight.w600),
                      ),
                      Icon(Icons.more_vert)
                    ],
                  ),
                  Divider(),
                  priceRangeBar(),
                  productBar()
                ],
              ),
            ),
          ),
        ),
      ),
      routes: {
        ProductDetails.routeName: (context) => ProductDetails(),
      },
    );
  }

  ListView productBar() {
    return ListView(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children: [
        Product(
          img: 'assets/images/house5.jpg',
          price: '\$200,000',
          address: 'Silicon street',
          spec: '4 Bedroom / 2 bathroom',
        ),
        Product(
          img: 'assets/images/house4.jpg',
          price: '\$450,000',
          address: 'BBQ street',
          spec: '5 Bedroom / 5 bathroom',
        ),
        Product(
          img: 'assets/images/house3.jpg',
          price: '\$340,000',
          address: 'Washington street',
          spec: '5 Bedroom / 3 bathroom',
        ),
        Product(
          img: 'assets/images/house2.jpg',
          price: '\$700,000',
          address: 'Citadel road',
          spec: '4 Bedroom / 2 bathroom',
        ),
        Product(
          img: 'assets/images/house1.jpg',
          price: '\$300,000',
          address: 'Abacuz road',
          spec: '4 Bedroom / 2 bathroom',
        ),
      ],
    );
  }

  Container priceRangeBar() {
    return Container(
      height: 38,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          CustomRecomendations(text: '\$ 22000'),
          CustomRecomendations(text: '\$ 9990'),
          CustomRecomendations(text: '<\$ 50000'),
          CustomRecomendations(text: '\$ 15K-\$ 20K'),
          CustomRecomendations(text: '\$ 2299'),
        ],
      ),
    );
  }
}
