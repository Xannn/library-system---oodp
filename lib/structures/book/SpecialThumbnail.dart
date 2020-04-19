import 'package:flutter/material.dart';
import 'Book.dart';


class SpecialThumbnail extends Book {

  SpecialThumbnail(String id, String title, String author, String description, String imageURL,
    String category, String price) : super(id, title, author, description, imageURL, category, price);

  @override
  Image thumbnail() {
    
    return Image(

      image: NetworkImage(this.imageURL),

    );
  
  } 

}