import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Music",
      home: new MusicPage()));
}

class MusicPage extends StatefulWidget {
  @override
  _MusicPageState createState() => _MusicPageState();
}

class _MusicPageState extends State<MusicPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Music',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              )),
          centerTitle: true,
          backgroundColor: Colors.white,
          brightness: Brightness.dark,
          elevation: 0,
        ),
        backgroundColor: Colors.deepOrange[600],
        body: Container(
          child: Stack(
            children: <Widget>[
              Positioned(
                left: 0,
                right: 0,
                //this is for the box that holds the image and progress widget
                child: Container(
                  width: 415.0,
                  height: 500.0,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(70.0),
                          bottomRight: Radius.circular(70.0))),
                  //This is for the image in the middle
                  alignment: Alignment.center,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      color: Colors.redAccent,
                    ),
                    margin: EdgeInsets.only(bottom: 200),
                    //decoration: BoxDecoration(
                    // borderRadius: BorderRadius.all(Radius.circular(3)),
                    // ),
                    child: Column(
                      children: <Widget>[
                        Image.asset(
                          'images/bellion.jpg',
                          width: 300,
                          height: 300,
                          fit: BoxFit.cover,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(80.0, 315.0, 40.0, 0.0),
                child: Text(
                  "Simple and Sweet",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.normal,
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(80.0, 350.0, 40.0, 0.0),
                child: Text("Jon Bellion",
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.normal,
                      fontStyle: FontStyle.normal,
                      color: Colors.grey,
                    )),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(290.0, 310.0, 40.0, 0.0),
                child: FloatingActionButton(
                  onPressed: null,
                  backgroundColor: Colors.lightBlue[800],
                  child: Icon(Icons.play_arrow),
                  elevation: 10.0,
                ),
              ),
              // SizedBox( height: 500.0,),
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: 250.0),
                  height: 4,
                  width: 270.0,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(200),
                    child: LinearProgressIndicator(),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0.0, 525.0, 0.0, 50.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Icon(
                      Icons.fast_forward,
                      color: Colors.white,
                      size: 30.0,
                      semanticLabel: 'Fast Forward',
                    ),
                    Icon(Icons.favorite,
                        color: Colors.white,
                        size: 30.0,
                        semanticLabel: 'Add to Favourites'),
                    Icon(Icons.chat_bubble,
                        color: Colors.white,
                        size: 30.0,
                        semanticLabel: 'Add Comments')
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
