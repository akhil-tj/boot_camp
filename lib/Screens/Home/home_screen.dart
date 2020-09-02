import 'package:boot_camp/CustomWidgets/custom_app_bar.dart';
import 'package:boot_camp/CustomWidgets/custom_floating_btn.dart';
import 'package:boot_camp/CustomWidgets/custom_recomendations.dart';
import 'package:boot_camp/CustomWidgets/product.dart';
import 'package:boot_camp/Screens/Details/product_details.dart';
import 'package:boot_camp/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:boot_camp/Styles/text_styles.dart';

class MyApp extends StatelessWidget {
  List<ProductDataModel> productList = [
    ProductDataModel(
        img: 'assets/images/house5.jpg',
        price: 200000,
        place: 'Silicon street',
        bedroom: 5,
        bathroom: 4),
    ProductDataModel(
        img: 'assets/images/house4.jpg',
        price: 450000,
        place: 'BBQ Mahal',
        bedroom: 3,
        bathroom: 3),
    ProductDataModel(
        img: 'assets/images/house3.jpg',
        price: 560000,
        place: 'Willighton Islands',
        bedroom: 3,
        bathroom: 4),
    ProductDataModel(
        img: 'assets/images/house2.jpg',
        price: 99900,
        place: 'Main Powerhouse',
        bedroom: 4,
        bathroom: 4),
    ProductDataModel(
        img: 'assets/images/house1.jpg',
        price: 8500500,
        place: 'Baaly street',
        bedroom: 2,
        bathroom: 2),
  ];

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
                  ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: productList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Product(
                        img: productList[index].img,
                        price: productList[index].price.toString(),
                        address: productList[index].place,
                        spec:
                            "${productList[index].bedroom} Bedroom / ${productList[index].bathroom} Bathroom",
                      );
                    },
                  ),
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

  Container priceRangeBar() {
    return Container(
      height: 38,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          CustomRecomendations(text: '\$ 22000'),
          CustomRecomendations(text: '\$ 9990'),
          CustomRecomendations(text: '<\$ 50000'),
          CustomRecomendations(text: '\$ 15K - \$ 20K'),
          CustomRecomendations(text: '\$ 8995'),
          CustomRecomendations(text: '\$ 5299'),
          CustomRecomendations(text: '\$ 7000')
        ],
      ),
    );
  }
}
