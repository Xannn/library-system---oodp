import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart';

import 'book/Book.dart';
import 'book/DefaultThumbnail.dart';
import 'book/EmptyBook.dart';
import 'book/SpecialThumbnail.dart';


abstract class BookFactory {

  static Book createEmpty() {
    return new EmptyBook();
  }

  static Book createFromFetch(Map<String, dynamic> item) {

    var id = item['id'];
    var title = item['volumeInfo']['title'];
    var author = item['volumeInfo']['authors'] != null? item['volumeInfo']['authors'][0]: 'Unknown Author';
    var description = item['volumeInfo']['description'];
    var imageURL = item['volumeInfo']['imageLinks'] != null? item['volumeInfo']['imageLinks']['thumbnail']: null;  
    var category = 'not now';
    var price = item['saleInfo'] != null && item['saleInfo']['listPrice'] != null? item['saleInfo']['listPrice']['amount'].toString(): 'N/A';

    if (title == '' || title == null)
      return EmptyBook();

    if (imageURL == '' || imageURL == null)
      return DefaultThumbnail(id, title, author, description, category, price);

    return SpecialThumbnail(id, title, author, description, imageURL, category, price);

  } // (String id, String title, String author, String description, String imageURL, String category, String price)

}