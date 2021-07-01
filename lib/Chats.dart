import 'package:flutter/material.dart';

class Chats {
  var name;
  var text;
  var date;
  var image;
  Icon sent;

  Chats(name, text, date, image, {Icon sent}) {
    this.name = name;
    this.text = text;
    this.date = date;
    this.image = image;
    this.sent = sent;
  }
}

List<Chats> pallet = [
  Chats("Robert", "Hi!!", "11.59 AM", "assets/robert.jpg",
      sent: Icon(
        Icons.done,
        color: Colors.grey,
        size: 19,
      )),
  Chats("Liya", "Can i call u tmr?", "8.00 AM", "assets/Liya.jpg"),
  Chats("Alfred", "I am on my way", "Yesterday", "assets/Alfred.jpg",
      sent: Icon(
        Icons.done_all,
        color: Colors.blueAccent,
        size: 19,
      )),
  Chats("Boss", "Submit it by today", "Yesterday", "assets/Boss.jpg"),
  Chats("Brown", "Yeah!", "29/06/2021", "assets/Brown.jpg"),
  Chats("Victoria", "Cool Bro!", "29/06/2021", "assets/Victoria.jpg"),
];
