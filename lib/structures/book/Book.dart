import 'package:flutter/material.dart';
import 'package:librarysystem/backend/Manager.dart';
import 'package:librarysystem/structures/book/readingModes/ReadingMode.dart';
import '../../components/OurColors.dart';


abstract class Book {
  
  String id;
  String title;
  String author;
  String description;
  String imageURL;
  String category;
  String price;
  ReadingMode mode;
 

  Book(String id, String title, String author, String description, String imageURL, String category, String price, ReadingMode mode) {

    this.id = id;
    this.title = title;
    this.author = author;
    this.description = description;
    this.imageURL = imageURL;
    this.category = category;
    this.price = price;
    this.mode = mode;

  }

  Image thumbnail();

  Widget widget(dynamic context) {

    return Padding(

      padding: const EdgeInsets.only(bottom: 6),
      child: RaisedButton(

        color: OurColors.instance().secondary,
        elevation: 3,
        splashColor: OurColors.instance().primary,
        onPressed: () => Manager.addBook(this, context),
        child: Row(
          
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[

            thumbnail(),
            Container(

              // color: Colors.green,
              width: 255,
              child: Column(
                
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[

                  Text(title,

                    style: TextStyle(

                      color: Colors.white,
                      fontSize: 21,
                      fontWeight: FontWeight.w500,

                    ),
                  
                  ),
                  Text(author,
                  
                    style: TextStyle(

                      color: OurColors.instance().tertiary,
                      fontSize: 17,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w400,

                    ),
                  
                  )

                ],

              ),

            ),
            Text(price,
            
              style: TextStyle(

                fontWeight: FontWeight.w400,
                fontSize: 12,
                color: OurColors.instance().light,
                fontStyle: FontStyle.italic

              ),
            
            ),

          ],

        ),

      ),

    );

  }

}
