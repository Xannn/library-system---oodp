import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:librarysystem/backend/fetch.dart';
import 'package:librarysystem/components/OurAppBar.dart';
import 'package:librarysystem/components/OurColors.dart';
import 'package:librarysystem/components/TestBook.dart';
import 'package:librarysystem/structures/BookFactory.dart';
import '../../structures/book/Book.dart';


class Search_pg extends StatefulWidget {

  @override
  _Search_pgState createState() => _Search_pgState();

}

class _Search_pgState extends State<Search_pg> {

  // final int searchlimit = 9;
  List<Book> books;
  List<Widget> bookWidgets;
  Column bookWidgetsList;
  var Searchbarcntrl = TextEditingController();


  void searchFor(String s, dynamic context) async {

    print('reseting list');
    setState(() {
      books = new List<Book>();
    });

    print('searching for ' + s);

    if (s == '') {
      print('empty search');
      updateWidgets(context);
      return;
    }

    final result = await fetchAll(s);
    if (result != null)
      for (var item in result['items']) { // 10 is the limit for some reason

        print('search done, found ' + item['volumeInfo']['title']);
        print('will call factory now');

        setState(() { books.add(BookFactory.createFromFetch(item)); });
        print('factory call complete');      

      }
    updateWidgets(context);
    return;

  }

  void updateWidgets(dynamic context) {

    if (bookWidgets == null)
      setState(() { bookWidgets = new List<Widget>(); });

    if (books == null)
      setState(() { books = new List<Book>(); });

    //  if (books.isEmpty)
      //  setState(() { books.add(BookFactory.createEmpty()); });

    setState(() {
      bookWidgets.clear();
      for (Book book in books) {

        bookWidgets.add(book.widget(context));
        
      }
    });
    
    setState(() { bookWidgetsList = new Column(children: bookWidgets); }); // might need to come last

  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: OurColors.instance().secondary,
      // appBar: AppBar(title: Text('Search'), backgroundColor: Colors.grey[800], centerTitle: true,),
      appBar: OurAppBar('Search'),
      body: ListView(

        children: <Widget>[

          Theme(
            
            data: ThemeData(primaryColor: Colors.white54, cursorColor: Colors.white54),
            child: Padding(
              
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                
                maxLines: 1,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(icon: Icon(Icons.search), hintText: 'search..' ), 
                onSubmitted: (txt) => searchFor(txt, context),
                
              ),
            
            )
          
          ),

          // SizedBox(height: 36.0,),

          //Here comes the search results in a stful widget it'll probably be a list          
          // (book == null)? TestBook(): book.widget(),
          bookWidgetsList != null? bookWidgetsList: Container(),
          

        ],
 
      ),

    );

  }

}
