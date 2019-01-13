import 'package:flutter/material.dart';
import 'package:flutter_chat/models/chat_model.dart';

class Chatlist extends StatefulWidget {
  @override
  _ChatlistState createState() => _ChatlistState();
}

class _ChatlistState extends State<Chatlist> {
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: messageData.length,
      itemBuilder: (context, i) => new Column(
        children: <Widget>[
          new Divider(
            height: 10,
          ),
          new ListTile(
            leading: new CircleAvatar(
              backgroundImage: NetworkImage(messageData[i].imageUrl),
            ),
            title: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
              new Text(messageData[i].name + " :",
              style: new TextStyle(fontWeight: FontWeight.bold),),
              new Text(messageData[i].time,
              style: new TextStyle(color: Colors.grey, fontSize: 12),),
            ]

            ),
            subtitle: new Container(
              padding: const EdgeInsets.only(top: 5.0),
              child: new Text(messageData[i].message,
                style: new TextStyle(color: Colors.grey, fontSize: 15),),
            )
          )
        ],
      ),
    );
  }
}
