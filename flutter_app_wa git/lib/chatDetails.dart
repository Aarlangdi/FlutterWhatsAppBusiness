import 'package:flutter/material.dart';

class ChatDetails extends StatelessWidget
{
  List<Container> chatList = [];

  @override
  Widget build(BuildContext context)
  {
    for(int i = 0; i < 20; i++)
    {
      if(i%2 == 0)
      {
        chatList.add(
            Container(
              alignment: Alignment.topRight,
              child: Container(
                child: Column(
                  children: <Widget>[
                    Text("message message message message message"),
                    Container(
                      alignment: Alignment.topRight,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Text("2:30 pm"),
                          Icon(
                            Icons.check,
                            size: 15.0,
                          )
                        ],
                      ),
                    )
                  ],
                ),
                padding: EdgeInsets.all(10.0),
                margin: EdgeInsets.all(10.0),
                width: MediaQuery.of(context).size.width/1.5,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(25.0)
                ),
              ),
            )
        );
      }
      else
      {
        chatList.add(
            Container(
              alignment: Alignment.topLeft,
              child: Container(
                child: Column(
                  children: <Widget>[
                    Text("message message message message message"),
                    Container(
                      alignment: Alignment.topRight,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Text("2:30 pm"),
                          Icon(
                            Icons.check,
                            size: 15.0,
                          )
                        ],
                      ),
                    )
                  ],
                ),
                padding: EdgeInsets.all(10.0),
                margin: EdgeInsets.all(10.0),
                width: MediaQuery.of(context).size.width/1.5,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(25.0)
                ),
              ),
            )
        );
      }
    }

    return Scaffold(
      appBar: AppBar(
        titleSpacing: -25.0,
        title: ListTile(
          leading: CircleAvatar(
            radius: 20.0,
            backgroundImage: AssetImage("profileImg.jpeg"),
          ),
          title: Text("John Ryan", style: TextStyle(fontWeight: FontWeight.bold),),
          subtitle: Text("Last seen today at 5:11 pm"),
        ),
        actions: <Widget>[
          Icon(
              Icons.videocam
          ),
          SizedBox(width: 25.0,),
          Icon(
              Icons.call
          ),
          SizedBox(width: 25.0,),
          Icon(
              Icons.more_vert
          )
        ],
      ),
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            ListView(
              children: chatList,
            ),
            Positioned(
              bottom: 0,
              child: Container(
                color: Colors.white,
                child: Row(
                  children: <Widget>[
                    SizedBox(width: 5.0,),
                    Container(
                      width: MediaQuery.of(context).size.width-65.0,
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(5.0),
                            hintText: "Type a message",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30.0)
                            ),
                            prefixIcon: Icon(
                                Icons.tag_faces
                            ),
                            suffixIcon: Icon(
                                Icons.camera_alt
                            )
                        ),
                      ),
                    ),
                    SizedBox(width: 5.0,),
                    Container(
                      width: 50.0,
                      height: 50.0,
                      child: Icon(
                        Icons.mic
                      ),
                      decoration: BoxDecoration(
                          color: Colors.green,
                        borderRadius: BorderRadius.circular(100.0)
                      ),
                    ),
                    SizedBox(width: 5.0,),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}