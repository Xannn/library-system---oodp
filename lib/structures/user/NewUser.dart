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
  List<String> ownedBooksIDs() {
    return new List<String>();
  }

}