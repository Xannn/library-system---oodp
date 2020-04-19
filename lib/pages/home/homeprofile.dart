import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:librarysystem/components/OurAppBar.dart';
import 'package:librarysystem/components/OurColors.dart';


class profile_pg extends StatefulWidget {

  @override
  _profile_pgState createState() => _profile_pgState();
  
}

class _profile_pgState extends State<profile_pg> {

  final Image userImage;
  final String firstName;
  final String lastName;

  _profile_pgState() :

    userImage = Image.asset('images/darwin.png'),
    firstName = 'FirstName',
    lastName = 'LastName',

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
                  backgroundImage: Image.asset('images/darwin.png').image,
                  backgroundColor: Colors.black,

                ),

              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[

                  Text(

                    'FirstName',
                    style: TextStyle(

                      fontSize: 26.0,
                      color: Colors.white,
                      letterSpacing: 5.0
                    
                    ),

                  ),
                  Text('LastName',

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
          SizedBox(height: 50.0),
          SizedBox(

            // width: 100,
            height: 100,
            child: ListView(

              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              children: <Widget>[

                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 8.0),
                  child: Image.asset('images/book.jpg'),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('images/book.jpg'),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('images/book.jpg'),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('images/book.jpg'),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('images/book.jpg'),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('images/book.jpg'),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('images/book.jpg'),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('images/book.jpg'),
                ),

              ],

            ),

          ),
          Center(
          
            child: Text('Recommended',
              style: TextStyle(
                color: Colors.white,
                fontSize: 23,
                fontWeight: FontWeight.w300,
                fontStyle: FontStyle.italic,
              ),
            )
          
          
          ),


          SizedBox(height: 26.0,),
          SizedBox(
            width: 100, height: 100,
            child: ListView(

              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 8.0),
                  child: Image.asset('images/book.jpg'),
                ), Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('images/book.jpg'),
                ), Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('images/book.jpg'),
                ),
              ],
            ),
          ),
          Center(child: Text('Owned'),),



          SizedBox(height: 26.0,),
          SizedBox(
            width: 100, height: 100,
            child: ListView(

              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 8.0),
                  child: Image.asset('images/book.jpg'),
                ), Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('images/book.jpg'),
                ), Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('images/book.jpg'),
                ),
              ],
            ),
          ),
          Center(child: Text('Rented Rooms'),),

        ],

      ),

    );

  }

}
