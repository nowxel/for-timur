import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;
  Product({
    this.id,
    this.image,
    this.title,
    this.price,
    this.description,
    this.size,
    this.color,
});

}

List<Product> products = [
  Product(
    id:1,
    title: "Scaridian Dress",
    price: 50,
    size: 12,
    description: "dummyText",
    image: "assets/images/image1.png",
    color: Colors.white,
  ),
  Product(
    id:2,
    title: "Wool Dress",
    price: 100,
    size: 12,
    description: "dummyText",
    image: "assets/images/image2.png",
    color: Colors.white,
  ),
  Product(
    id:1,
    title: "Cream cotton Dress",
    price: 50,
    size: 12,
    description: "dummyText",
    image: "assets/images/image3.png",
    color: Colors.white,
  ),
  Product(
    id:1,
    title: "Black Dress",
    price: 50,
    size: 12,
    description: "dummyText",
    image: "assets/images/image4.png",
    color: Colors.white,
  ),

];