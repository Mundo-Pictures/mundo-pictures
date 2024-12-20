import 'package:intl/intl.dart';

class Comment {
  Comment(
      {required this.name, required this.text, required this.dateSubmitted});

  String name = "";
  String text = "";
  DateTime dateSubmitted = DateTime(2020);

  String getName() {
    return name;
  }

  String getText() {
    return text;
  }

  String getDateSubmitter() {
    DateFormat formatter = DateFormat('MM/dd/yyyy');
    String dateString = formatter.format(dateSubmitted);
    return dateString;
  }
}

class CommentList {
  List<Comment> commentList = [
    Comment(
        name: "UltimateMagento555",
        text: "why make a guide for a champ that gets permabanned",
        dateSubmitted: DateTime.now()),
    Comment(
        name: "UltimateMagento556",
        text: "why make a guide for a champ that gets permabanned",
        dateSubmitted: DateTime.now()),
    Comment(
        name: "UltimateMagento557",
        text: "why make a guide for a champ that gets permabanned",
        dateSubmitted: DateTime.now())
  ];

  num get length => commentList.length;

  List<Comment> getList() {
    return commentList;
  }

  void printList() {
    print(commentList);
  }
}
