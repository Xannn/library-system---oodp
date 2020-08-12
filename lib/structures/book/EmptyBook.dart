import 'package:flutter/material.dart';
import 'Book.dart';


final String _desc = 'Nothing to see here, start adding books to your owned.';

class EmptyBook extends Book {

  EmptyBook() : super('0', 'Empty', 'No one', _desc, '', 'None', '0.00');

  @override
  Image thumbnail() {

    return Image(

      image: NetworkImage('https://jgxf2r66dr-flywheel.netdna-ssl.com/wp-content/uploads/sites/3/2017/01/gray-box-1.png'),
      height: 90,

    );

  }

}