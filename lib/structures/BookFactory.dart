import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart';

import 'book/Book.dart';
import 'book/DefaultThumbnail.dart';
import 'book/EmptyBook.dart';
import 'book/SpecialThumbnail.dart';

import 'book/readingModes/ReadingMode.dart';
import 'book/readingModes/Both.dart' as ModeBoth;
import 'book/readingModes/Image.dart' as ModeImage;
import 'book/readingModes/Text.dart' as ModeText;


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
    
    ReadingMode r_mode;
    if (item['volumeInfo']['readingModes']['text'] == true && item['volumeInfo']['readingModes']['image'] == true) {
      r_mode = new ModeBoth.Both();
    }
    else {
      r_mode = item['volumeInfo']['readingModes']['text'] == true? new ModeText.Text() : new ModeImage.Image();
    }
    r_mode.announceMode();

    if (title == '' || title == null)
      return EmptyBook();

    if (imageURL == '' || imageURL == null)
      return new DefaultThumbnail(id, title, author, description, category, price, r_mode);

    return SpecialThumbnail(id, title, author, description, imageURL, category, price, r_mode);

  } // (String id, String title, String author, String description, String imageURL, String category, String price)

}
