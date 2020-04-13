
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Search_pg extends StatefulWidget {
  @override
  _Search_pgState createState() => _Search_pgState();
}

class _Search_pgState extends State<Search_pg> {

  var Searchbarcntrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Search'), backgroundColor: Colors.grey[800], centerTitle: true,),

      body: ListView(
        children: <Widget>[

          SizedBox(width: 350, child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(maxLines: 1, style: TextStyle(color: Colors.white),
              decoration: InputDecoration(icon: Icon(Icons.search), hintText: 'search..' ), ),
          )),

          SizedBox(height: 36.0,)

          //Here comes the search results in a stful widget it'll probably be a list

        ],
      ),


      backgroundColor: Colors.grey[900],
    );
  }
}
