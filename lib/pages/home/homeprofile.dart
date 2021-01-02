import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:librarysystem/backend/Manager.dart';
import 'package:librarysystem/components/OurAppBar.dart';
import 'package:librarysystem/components/OurColors.dart';


class Profile_pg extends StatefulWidget {

  @override
  _Profile_pgState createState() => _Profile_pgState();
  
}

class _Profile_pgState extends State<Profile_pg> {

  final String userImage;
  final String firstName;
  final String lastName;

  _Profile_pgState() :

    userImage = 'images/profile.png',
    firstName = '[First Name]',
    lastName = '[Last Name]',

    super();


  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: OurAppBar("My Profile"),
      backgroundColor: OurColors.instance().secondary,
      body: ListView(

        children: <Widget>[

          SizedBox(height: 10.0),
          Row(

            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[

              Center(

                child: CircleAvatar(

                  radius: 60.0,
                  backgroundImage: Image.asset(userImage).image,
                  backgroundColor: Colors.white,

                ),

              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[

                  Text(

                    firstName,
                    style: TextStyle(

                      fontSize: 26.0,
                      color: Colors.white,
                      letterSpacing: 5.0
                    
                    ),

                  ),
                  Text(
                    lastName,
                    style: TextStyle(

                      fontSize: 26.0,
                      color: Colors.white,
                      letterSpacing: 5.0
                      
                    ),

                  )

                ],

              ),

            ],

          ),
          SizedBox(height: 25.0),
          SizedBox(

            // width: 100,
            height: 100,
            child: ListView(

              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              children: Manager.allBookThumbnails('b'),

            ),

          ),
          Center(
          
            child: Text('Text & Images',
              style: TextStyle(
                color: Colors.white,
                fontSize: 23,
                fontWeight: FontWeight.w300,
                fontStyle: FontStyle.italic,
              ),
            )
                
          ),

          SizedBox(height: 20.0,),
          SizedBox(
            width: 100, height: 100,
            child: ListView(

              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              children: Manager.allBookThumbnails('i'),
            ),
          ),
          
          Center(
          
            child: Text('Images',
              style: TextStyle(
                color: Colors.white,
                fontSize: 23,
                fontWeight: FontWeight.w300,
                fontStyle: FontStyle.italic,
              ),
            )
                
          ),

          SizedBox(height: 20.0,),
          SizedBox(
            width: 100, height: 100,
            child: ListView(

              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              children: Manager.allBookThumbnails('t'),
            ),
          ),

          Center(
          
            child: Text('Text',
              style: TextStyle(
                color: Colors.white,
                fontSize: 23,
                fontWeight: FontWeight.w300,
                fontStyle: FontStyle.italic,
              ),
            )
                
          ),

        ],

      ),

    );

  }

}
