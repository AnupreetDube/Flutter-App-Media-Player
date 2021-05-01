import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';
import 'ui/ui1.dart';
import 'ui/ui2.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Builder(
        builder: (context) => Scaffold(
          backgroundColor: Colors.black,
          body: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  "assets/MediaPlayerLOGO.png",
                  fit: BoxFit.cover,
                ),
                Text(
                  "FLUTTER Media Player",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 30,
                  ),
                ),
                Text(
                  "Music that soothes your soul...",
                  style: TextStyle(
                    color: Colors.black,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                RaisedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MainPage()),
                    );
                  },
                  color: Colors.amber,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                    side: BorderSide(
                      color: Colors.white,
                    ),
                  ),
                  child: Icon(
                    Icons.arrow_forward,
                    color: Colors.amber,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MainPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Builder(
        builder: (context) => Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.black,
            leading: Image.asset('images/MediaPlayerLOGO.jpg'),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.arrow_back_ios),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyApp()),
                  );
                },
              ),
              IconButton(
                icon: Icon(Icons.settings),
                onPressed: () => {
                  print("Pressed Setting"),
                },
              ),
            ],
            title: Text(
              "Media Player",
            ),
          ),
          body: Container(
            width: double.infinity,
            margin: EdgeInsets.all(3.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                FlatButton(
                  onPressed: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MusicPlayer()),
                    ),
                  },
                  child: Card(
                    shadowColor: Colors.white,
                    child: Image.asset(
                      "assets/MediaPlayer.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                FlatButton(
                  onPressed: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MoviePlayer()),
                    ),
                  },
                  child: Card(
                    shadowColor: Colors.white,
                    child: Image.asset(
                      "assets/MediaPlayer.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

AudioPlayer audioPlayer = AudioPlayer(mode: PlayerMode.MEDIA_PLAYER);
AudioCache cache = AudioCache(fixedPlayer: audioPlayer);

pause() {
  audioPlayer.pause();
}

stop() {
  audioPlayer.stop();
}

music1() {
  print("Faded - Alan Walker");
  cache.play(
    "Faded.mp3",
    stayAwake: true,
  );
}

music2() {
  print("Alone - Alan Walker");
  cache.play(
    "Alone.mp3",
    stayAwake: true,
  );
}

music3() {
  print("Despacito - Daddy Yankee");
  cache.play(
    "Despacito.mp3",
    stayAwake: true,
  );
}

class MusicPlayer extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("Music that Soothes your Soul"),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MainPage()),
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () => {
                print("Pressed Setting"),
              },
            ),
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              child: Card(
                shadowColor: Colors.white,
                color: Colors.black,
                child: Row(
                  children: <Widget>[
                    Image.network(
                      "https://cdn2.hubspot.net/hubfs/245581/shutterstock_317819021.jpg",
                      height: 100,
                      width: 100,
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Faded - Alan Walker",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            IconButton(
                                icon: Icon(
                                  Icons.stop,
                                  size: 40,
                                  color: Colors.white,
                                ),
                                onPressed: stop),
                            IconButton(
                                icon: Icon(
                                  Icons.pause,
                                  size: 40,
                                  color: Colors.white,
                                ),
                                onPressed: pause),
                            IconButton(
                                icon: Icon(
                                  Icons.play_arrow,
                                  size: 40,
                                  color: Colors.white,
                                ),
                                onPressed: music1),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Card(
                shadowColor: Colors.white,
                color: Colors.black,
                child: Row(
                  children: <Widget>[
                    Image.network(
                      "https://s3-eu-west-1.amazonaws.com/pristine-classical-storage/misc/digitalmusicheadphones.jpg",
                      height: 100,
                      width: 100,
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Alone - Alan Walker",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            IconButton(
                                icon: Icon(
                                  Icons.stop,
                                  size: 40,
                                  color: Colors.white,
                                ),
                                onPressed: stop),
                            IconButton(
                                icon: Icon(
                                  Icons.pause,
                                  size: 40,
                                  color: Colors.white,
                                ),
                                onPressed: pause),
                            IconButton(
                                icon: Icon(
                                  Icons.play_arrow,
                                  size: 40,
                                  color: Colors.white,
                                ),
                                onPressed: music2),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Card(
                shadowColor: Colors.white,
                color: Colors.black,
                child: Row(
                  children: <Widget>[
                    Image.network(
                      "https://www.musitechnic.com/wp-content/uploads/2018/09/music-symbols-.jpg",
                      height: 100,
                      width: 100,
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Despacito - Daddy Yankee",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            IconButton(
                                icon: Icon(
                                  Icons.stop,
                                  size: 40,
                                  color: Colors.white,
                                ),
                                onPressed: stop),
                            IconButton(
                                icon: Icon(
                                  Icons.pause,
                                  size: 40,
                                  color: Colors.white,
                                ),
                                onPressed: pause),
                            IconButton(
                                icon: Icon(
                                  Icons.play_arrow,
                                  size: 40,
                                  color: Colors.white,
                                ),
                                onPressed: music3),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MoviePlayer extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("Music that Soothes your soul"),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MainPage()),
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () => {
                print("Pressed Setting"),
              },
            ),
          ],
        ),
        body: Container(
          //width: 100,
          //height: 300,
          child: Column(
            children: <Widget>[
              Card(
                shadowColor: Colors.white,
                child: Column(
                  children: <Widget>[
                    Image.network(
                      "https://images.ctfassets.net/bdyhigkzupmv/6lySzcy7qcIN1tf81Qkus/5b5ac73daeaf61f9057c0b0dd8447a31/hero-guitar-outro.jpg",
                      height: 200,
                      width: double.infinity,
                    ),
                    IconButton(
                      icon: Icon(Icons.arrow_forward_ios),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ChewieDemo()),
                        );
                      },
                    ),
                  ],
                ),
              ),
              Card(
                shadowColor: Colors.white,
                child: Column(
                  children: <Widget>[
                    Image.network(
                      "https://www.thorncreekwinery.com/wp-content/uploads/2019/08/hipjazz.jpg",
                      height: 200,
                      width: double.infinity,
                    ),
                    IconButton(
                      icon: Icon(Icons.arrow_forward_ios),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SSPFVideo()),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
