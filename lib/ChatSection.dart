import 'package:flutter/material.dart';
import 'Chats.dart';

class ChatSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.message_sharp),
        backgroundColor: Colors.greenAccent[700],
        onPressed: () {},
      ),
      body: ListView.builder(
          padding: const EdgeInsets.all(10),
          itemCount: pallet.length,
          itemBuilder: (BuildContext context, index) => new Column(
                children: <Widget>[
                  if (index != 0)
                    Divider(
                      thickness: 0.5,
                    ),
                  ListTile(
                    onLongPress: () {},
                    onTap: () {},
                    leading: Container(
                      child: CircleAvatar(
                        radius: 27,
                        backgroundImage: AssetImage(pallet[index].image),
                      ),
                    ),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          pallet[index].name,
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 17,
                            color: Color(0xff4d4d4d),
                          ),
                        ),
                        Text(
                          pallet[index].date,
                          style: TextStyle(
                              fontWeight: FontWeight.w100, fontSize: 12),
                        )
                      ],
                    ),
                    subtitle: Container(
                        padding: EdgeInsets.only(top: 5),
                        child: Row(
                          children: <Widget>[
                            if (pallet[index].sent != null) pallet[index].sent,
                            if (pallet[index].sent != null)
                              Padding(padding: EdgeInsets.only(right: 4)),
                            Text(
                              pallet[index].text,
                            ),
                          ],
                        )),
                  ),
                ],
              )),
    );
  }
}
