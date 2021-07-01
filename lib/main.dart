import 'package:flutter/material.dart';
import 'package:whatsappclone/ChatSection.dart';
import 'package:whatsappclone/StatusSection.dart';
import 'package:whatsappclone/CallsSection.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WHATSAPP',
      theme: ThemeData(
        fontFamily: 'Helvetica',
        primaryColor: Color(0xff075E54),
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'WhatsApp',
            style: TextStyle(
              fontSize: 19,
              fontWeight: FontWeight.w600,
            ),
          ),
          bottom: TabBar(
            indicatorColor: Colors.white,
            tabs: [
              Container(
                width: 20,
                child: Tab(
                  child: Icon(
                    Icons.camera_alt_rounded,
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                width: 80,
                height: 30,
                child: Tab(
                  child: Text(
                    "CHATS",
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              Container(
                width: 80,
                height: 30,
                child: Tab(
                  child: Text(
                    "STATUS",
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              Container(
                width: 80,
                height: 30,
                child: Tab(
                  child: Text(
                    "CALLS",
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ],
          ),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.search), onPressed: () {}),
            IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
          ],
        ),
        body: TabBarView(children: [
          Icon(Icons.camera_alt_rounded),
          ChatSection(),
          StatusSection(),
          CallsSection(),
        ]),
      ),
    );
  }
}
