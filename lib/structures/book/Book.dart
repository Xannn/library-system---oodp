import 'package:flutter/material.dart';


abstract class Book {

  String id;
  String title;
  String author;
  String description;
  String imageURL;
  String category;
  String price;

  Book(String id, String title, String author, String description, String imageURL, String category, String price) {

    this.id = id;
    this. title = title;
    this.author = author;
    this.description = description;
    this.imageURL = imageURL;
    this.category = category;
    this.price = price;

  }

  Image thumbnail();

  // Fekra 3amatan bs unsure

  // Widget widget() { 
  //   return Container(child: thumbnail());
  // }

}