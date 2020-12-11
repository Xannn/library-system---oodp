import 'package:librarysystem/structures/book/Book.dart';


abstract class User {

  String email;
  String firstName;
  String lastName;
  String password;
  String phone;

  List<Book> ownedBooks();

}