import 'package:flutter/material.dart';
import 'Status.dart';

class StatusSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.camera_alt_rounded),
        backgroundColor: Colors.greenAccent[700],
      ),
      body: Column(
        children: <Widget>[
          ListTile(
            leading: Stack(
              children: <Widget>[
                CircleAvatar(
                  radius: 27,
                  backgroundImage: AssetImage('assets/mine.jpg'),
                ),
                Positioned(
                  bottom: 0.0,
                  right: 1.0,
                  child: Container(
                    height: 25,
                    width: 25,
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 15,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.greenAccent[700],
                      shape: BoxShape.circle,
                    ),
                  ),
                )
              ],
              clipBehavior: Clip.hardEdge,
            ),
            title: Text(
              'My Status',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 17,
                color: Color(0xff4d4d4d),
              ),
            ),
            subtitle: Container(
                padding: EdgeInsets.only(top: 5),
                child: Row(
                  children: <Widget>[
                    Text('Tap to add status update'),
                  ],
                )),
          ),
          Container(
            color: Colors.grey[100],
            width: double.infinity,
            height: 40,
            child: Column(
              children: <Widget>[
                Padding(padding: EdgeInsets.only(top: 10)),
                Row(
                  children: <Widget>[
                    Padding(padding: EdgeInsets.only(right: 20)),
                    Text('Viewed Updates',
                        style: TextStyle(color: Colors.black87)),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
