import 'dart:ffi';

class ProductDataModel {
  String img;
  double price;
  String place;
  int bedroom;
  int bathroom;
  ProductDataModel(
      {this.img, this.price, this.place, this.bedroom, this.bathroom});
}
