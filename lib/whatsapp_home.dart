import 'package:flutter/material.dart';
import 'package:flutter_chat/pages/status_screen.dart';
import 'package:flutter_chat/pages/camera_alt.dart';
import 'package:flutter_chat/pages/calls.dart';
import 'package:flutter_chat/pages/chat_list.dart';

class WhatsAppHome extends StatefulWidget {
  @override
  _WhatsAppHomeState createState() => new _WhatsAppHomeState();
 }
class _WhatsAppHomeState extends State<WhatsAppHome> with SingleTickerProviderStateMixin {
  TabController _controller;
  @override
  void initState(){
    super.initState();
    _controller = new TabController(vsync: this, initialIndex: 1, length: 4);
  }
  @override
  Widget build(BuildContext context) {
   return new Scaffold(

     appBar: new AppBar(
       title: new Text("Flutter Chat"),
       bottom: new TabBar(
         controller: _controller,
           tabs: <Widget>[
             new Tab(
               icon: new Icon(Icons.camera_alt),
             ),
             new Tab(text: "CHATS"),
             new Tab(text: "ESTADOS"),
             new Tab(text: "LLAMADAS"),

           ]),
     ),
     body: new TabBarView(
       controller: _controller,
         children: <Widget>[
           new Camera(),
           new Chatlist(),
           new Status(),
           new Calls()
         ]
     ),
   );
  }
}
