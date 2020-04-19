import 'User.dart';


class AddBook extends User {

  User _user;
  List<String> _newBook;

  AddBook(User user, String book) {

    this._user = user;
    _newBook = new List<String>();
    _newBook.add(book);

  }

  @override
  List<String> ownedBooksIDs() {
    return _user.ownedBooksIDs() + _newBook;
  }
  
}