import 'package:flutter/material.dart';
import 'chatDetails.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: _MyHomePageState(),
    );
  }
}

class _MyHomePageState extends StatelessWidget
{
  List<Card> cardList = [];
  @override
  Widget build(BuildContext context) {

    for(int i = 0; i < 20; i++)
    {
      cardList.add(Card(
        child: GestureDetector(
          child: ListTile(
            leading: CircleAvatar(
              radius: 20.0,
              backgroundImage: AssetImage("profileImg.jpeg"),
            ),
            title: Text("John Ryan", style: TextStyle(fontWeight: FontWeight.bold),),
            subtitle: Text("Hey! how are you? do you want to catch up......"),
            trailing: Text("4:27 pm"),
          ),
          onTap: ()
          {
            Navigator.push(context, MaterialPageRoute(builder: (context) => ChatDetails()));
          },
        ),
      ));
    }

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text("WhatsApp Business"),
          actions: <Widget>[
            Icon(
                Icons.search
            ),
            SizedBox(width: 20.0,),
            Icon(
                Icons.more_vert
            )
          ],
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.camera_alt),
              ),
              Tab(
                text: "CHATS",
              ),
              Tab(
                text: "STATUS",
              ),
              Tab(
                text: "CALLS",
              )
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Text("1"),
            ListView(
              children: cardList,
            ),
            Text("3"),
            Text("4")
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.message
          ),
        ),
      ),
    );
  }
}
