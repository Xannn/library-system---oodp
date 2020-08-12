import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart';


// Future<Map<String, dynamic> > fetchFirst(String query) async {

//   return fetchNth(query, 0);

// }


Future<Map<String, dynamic> > fetchAll(String query) async {

  // print('ping');
  final response = await get('https://www.googleapis.com/books/v1/volumes?q=' + query);
  // print('pong');

  if (response.statusCode != 200) {
    print('Error fetching');
    return null;
  }

  final Map<String, dynamic> values = json.decode(response.body);
  // values.forEach((k, v) => print(k + ' ' + v.toString()));
  
  if (values['totalItems'] as int > 0) {
    print(values['totalItems']);
    // name = values['items'][0]['volumeInfo']['title'];
    return values;
  }
  else
    print('no items found');

  return null;

}