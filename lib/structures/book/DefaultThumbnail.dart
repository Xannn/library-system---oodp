import 'package:flutter/material.dart';
import 'Book.dart';


class DefaultThumbnail extends Book {

  DefaultThumbnail(String id, String title, String author, String description,
    String category, String price) : super(id, title, author, description, '', category, price);

  @override
  Image thumbnail() { // can change this to rng select one of three default thumbnails
    
    return Image.asset('images/book.jpg', height: 90);

  }

}