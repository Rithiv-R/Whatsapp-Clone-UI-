import 'package:flutter/material.dart';

class Calls {
  var name;
  var date;
  Icon in_or_out;
  Icon call;
  var image;

  Calls({this.name, this.date, this.image, this.in_or_out, this.call});
}

List<Calls> pallet1 = [
  Calls(
      name: 'Victoria',
      date: 'Today 11:30 am',
      image: 'assets/Victoria.jpg',
      in_or_out: Icon(
        Icons.call_made,
        color: Colors.greenAccent,
        size: 19,
      ),
      call: Icon(
        Icons.call_rounded,
        color: Color(0xff128C7E),
        size: 26,
      )),
  Calls(
      name: 'Boss',
      date: 'Yesterday 12:55 pm',
      image: 'assets/Boss.jpg',
      in_or_out: Icon(
        Icons.call_received,
        color: Colors.red[400],
        size: 19,
      ),
      call: Icon(
        Icons.videocam,
        color: Color(0xff128C7E),
        size: 28,
      )),
  Calls(
      name: 'Victoria',
      date: '27 June 6:45 pm',
      image: 'assets/Victoria.jpg',
      in_or_out: Icon(
        Icons.call_received,
        color: Colors.red[400],
        size: 19,
      ),
      call: Icon(
        Icons.call_rounded,
        color: Color(0xff128C7E),
        size: 26,
      )),
  Calls(
      name: 'Alfred',
      date: '27 June 4:00 pm',
      image: 'assets/Alfred.jpg',
      in_or_out: Icon(
        Icons.call_made,
        color: Colors.greenAccent,
        size: 19,
      ),
      call: Icon(
        Icons.videocam,
        color: Color(0xff128C7E),
        size: 28,
      )),
  Calls(
      name: 'Liya',
      date: '26 June 12:05 pm',
      image: 'assets/Liya.jpg',
      in_or_out: Icon(
        Icons.call_received,
        color: Colors.red[400],
        size: 19,
      ),
      call: Icon(
        Icons.videocam,
        color: Color(0xff128C7E),
        size: 28,
      )),
];
