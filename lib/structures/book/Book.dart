import 'package:flutter/material.dart';
import '../../components/OurColors.dart';


abstract class Book {
  
/*hena
  String id;
  String title;
  String author;
  String description;
  String imageURL;
  String category;
  String price;
  ReadingMode rmode;
 

  Book(String id, String title, String author, String description, String imageURL, String category, String price,ReadingMode mode) {

    this.id = id;
    this.title = title;
    this.author = author;
    this.description = description;
    this.imageURL = imageURL;
    this.category = category;
    this.price = price;
    this.rmode = mode;

  }

*/
  String id;
  String title;
  String author;
  String description;
  String imageURL;
  String category;
  String price;
 

  Book(String id, String title, String author, String description, String imageURL, String category, String price) {

    this.id = id;
    this.title = title;
    this.author = author;
    this.description = description;
    this.imageURL = imageURL;
    this.category = category;
    this.price = price;

  }

  Image thumbnail();

  Widget widget() {

    return Padding(

      padding: const EdgeInsets.only(bottom: 6),
      child: RaisedButton(

        color: OurColors.instance().secondary,
        elevation: 3,
        splashColor: OurColors.instance().primary,
        onPressed: () => {},
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
