import 'package:librarysystem/structures/book/Book.dart';
import 'User.dart';


class AddBook extends User {

  User _user;
  List<Book> _newBook;

  AddBook(User user, Book book) {

    this._user = user;
    _newBook = new List<Book>();
    _newBook.add(book);

  }

  @override
  List<Book> ownedBooks() {
    return _user.ownedBooks() + _newBook;
  }
  
}