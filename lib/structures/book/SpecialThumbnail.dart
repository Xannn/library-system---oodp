import 'package:flutter/material.dart';
import 'package:librarysystem/structures/book/readingModes/ReadingMode.dart';
import 'Book.dart';


class SpecialThumbnail extends Book {

  SpecialThumbnail(String id, String title, String author, String description, String imageURL,
    String category, String price, ReadingMode mode) : super(id, title, author, description, imageURL, category, price, mode);

  @override
  Image thumbnail() {
    
    return Image(

      image: NetworkImage(this.imageURL),
      width: 70,

    );
  
  } 

}