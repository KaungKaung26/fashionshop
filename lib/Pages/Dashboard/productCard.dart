import 'package:fashionshop/Pages/Models/productmodel.dart';
import 'package:fashionshop/Utils/constant.dart';
import 'package:flutter/material.dart';

class GridItem extends StatelessWidget {
  final ProductModel product;

  const GridItem({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(10), color: white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          Text(
            '\$${product.price.toString()}',
            style: TextStyle(fontSize: 14.0),
          ),
          SizedBox(
            height: 5,
          ),
          Image.asset(
            product.image,
            fit: BoxFit.cover,
            height: 100,
            width: double.infinity,
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  product.name,
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 4.0),
                Text(
                  'Size: ${product.size}',
                  style: TextStyle(fontSize: 14.0),
                ),
                Text(
                  'Type: ${product.type}',
                  style: TextStyle(fontSize: 14.0),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
