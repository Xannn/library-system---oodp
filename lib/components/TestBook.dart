import 'package:flutter/material.dart';
import 'package:librarysystem/backend/fetch.dart';
import 'OurColors.dart';


class TestBook extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

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

            Image.asset('images/book.jpg', height: 90),
            Container(

              // color: Colors.green,
              width: 255,
              child: Column(
                
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[

                  Text('A Very Long Book Title So That We Test Realistaclly',

                    style: TextStyle(

                      color: Colors.white,
                      fontSize: 21,
                      fontWeight: FontWeight.w500,

                    ),
                  
                  ),
                  Text('ANotSo LongName',
                  
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
            Text('00.00\$',
            
              style: TextStyle(

                fontWeight: FontWeight.w400,
                fontSize: 17,
                color: OurColors.instance().light,
                // fontStyle: FontStyle.italic

              ),
            
            ),

          ],

        ),

      ),
    );

  }

}