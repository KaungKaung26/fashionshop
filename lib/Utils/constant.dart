import 'package:fashionshop/Pages/Models/productmodel.dart';
import 'package:flutter/material.dart';

const primaryColor = Color(0xFF03045e);
const secondaryColor = Color(0xFF023e8a);

const fillColor = Color(0xFF0077b6);
const fillColor2 = Color(0xFF0096c7);
const fillColor3 = Color(0xFF00b4d8);
const fillColor4 = Color(0xFF48cae4);
const fillColor5 = Color(0xFF90e0ef);
const fillColor6 = Color(0xFFade8f4);
const backgroundColor = Color(0xFFcaf0f8);

const blue = Colors.blue;
const black = Colors.black;
const white = Colors.white;
const grey = Colors.grey;
const red = Colors.red;
const pink = Colors.pinkAccent;
const darkgrey = Color(0xFF383838);

TextStyle headerWhiteText =
    TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: white);
TextStyle headerBlackText =
    TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: black);
TextStyle bodyWhite14 =
    TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: white);
TextStyle bodyBlack14 =
    TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: black);
TextStyle bodyWhite16 =
    TextStyle(fontSize: 16, fontWeight: FontWeight.normal, color: white);
TextStyle bodyBlack16 =
    TextStyle(fontSize: 16, fontWeight: FontWeight.normal, color: black);
TextStyle bodyBlack18 =
    TextStyle(fontSize: 18, fontWeight: FontWeight.normal, color: black);
TextStyle titleBlackText =
    TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: black);
TextStyle titleWhiteText =
    TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: white);
TextStyle titleText =
    TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: black);

List<ProductModel> products = [
  ProductModel(
    image: 'assets/ad1.jpeg',
    name: 'Adidas',
    size: 'L',
    price: 29.99,
    type: 'Shirt',
  ),
  ProductModel(
    image: 'assets/ad2.jpeg',
    name: 'Adidas',
    size: 'M',
    price: 28.99,
    type: 'Shirt',
  ),
  ProductModel(
    image: 'assets/ad3.jpeg',
    name: 'Adidas',
    size: 'L',
    price: 29.99,
    type: 'Shirt',
  ),
  ProductModel(
    image: 'assets/ad4.jpeg',
    name: 'Adidas',
    size: 'M',
    price: 28.99,
    type: 'Shirt',
  ),
  ProductModel(
    image: 'assets/ad5.jpeg',
    name: 'Adidas',
    size: 'L',
    price: 29.99,
    type: 'Shirt',
  ),
  ProductModel(
    image: 'assets/ad6.jpeg',
    name: 'Adidas',
    size: 'M',
    price: 28.99,
    type: 'Shirt',
  ),
  // Add more items as needed
];
