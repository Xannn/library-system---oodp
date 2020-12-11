import 'package:librarysystem/structures/book/Book.dart';
import 'User.dart';


class NewUser extends User {

  NewUser(String email, String firstName, String lastName, String password, String phone) {

    this.email = email;
    this.firstName = firstName;
    this.lastName = lastName;
    this.password = password;
    this.phone = phone;

  }
  
  @override
  List<Book> ownedBooks() {
    return new List<Book>();
  }

}