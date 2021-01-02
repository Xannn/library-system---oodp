import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:librarysystem/structures/book/Book.dart';
import 'package:librarysystem/structures/book/readingModes/ReadingMode.dart';

import '../structures/user/AddBook.dart';
import '../structures/user/NewUser.dart';
import '../structures/user/User.dart';

import '../structures/book/readingModes/Both.dart' as ModeBoth;
import '../structures/book/readingModes/Image.dart' as ModeImage;
import '../structures/book/readingModes/Text.dart' as ModeText;


abstract class Manager {

  static User user;

  static void addBook(Book book, dynamic context) {

    String msg = 'Added to ';
    if (book.mode is ModeBoth.Both)
      msg += 'Text & Image Collection';
    else if (book.mode is ModeImage.Image)
      msg += 'Image Collection';
    else
      msg += 'Text Collection';

    Scaffold.of(context).showSnackBar(SnackBar(
      content: Text(msg),
    ));

    if (user == null) {
      user = NewUser('', '', '', '', '');
    }

    if (!user.ownedBooks().contains(book))
      user = AddBook(user, book);

  }

  static List<Widget> allBookThumbnails(String mode) {

    if (user == null) {
      user = NewUser('', '', '', '', '');
    }

    Type modeType;
    if (mode == 'b')
      modeType = ModeBoth.Both;
    else if (mode == 'i')
      modeType = ModeImage.Image;
    else
      modeType = ModeText.Text;

      
    List<Widget> images = new List<Widget>();
    var userBooks = user.ownedBooks();

    for (Book book in userBooks) {

      if (book.mode.runtimeType == modeType) {

        Padding p = new Padding(

          padding: const EdgeInsets.fromLTRB(15, 0, 15, 2.5),
          child: book.thumbnail(),
          
        );
        images.add(p);

      }

    }

    return images;

  }

}