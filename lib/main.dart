import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Organice"),
            actions: <Widget>[
              Padding(
                padding: EdgeInsets.only(right: 15),
                child: GestureDetector(
                  onTap: () {},
                  child: Icon(Icons.search),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 15),
                child: GestureDetector(
                  onTap: () {},
                  child: Icon(Icons.account_circle_outlined),
                ),
              ),
            ],
            bottom: TabBar(
              tabs: <Widget>[
                Tab(text: "Chats"),
                Tab(text: "Timeline"),
                Tab(text: "My Division")
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              Center(
                child: Text("Chats"),
              ),
              Center(
                child: Text("Timeline"),
              ),
              Center(
                child: Text("My Division"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
