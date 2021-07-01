import 'package:flutter/material.dart';
import 'Calls.dart';

class CallsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.call,
        ),
        backgroundColor: Colors.greenAccent[700],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: pallet1.length,
        itemBuilder: (BuildContext context, index) => new Column(
          children: <Widget>[
            if (index != 0)
              Divider(
                thickness: 0.5,
              ),
            ListTile(
              onLongPress: () {},
              onTap: () {},
              leading: CircleAvatar(
                radius: 27,
                backgroundImage: AssetImage(pallet1[index].image),
              ),
              trailing: pallet1[index].call,
              title: Text(
                pallet1[index].name,
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
                      if (pallet1[index].in_or_out != null)
                        pallet1[index].in_or_out,
                      if (pallet1[index].in_or_out != null)
                        Padding(padding: EdgeInsets.only(right: 4)),
                      Text(
                        pallet1[index].date,
                      ),
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}
