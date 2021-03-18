import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playsound(int soundnumber) {
    final player = AudioCache();
    player.play('note$soundnumber.wav');
  }

  FlatButton butt(sound_no, col) {
    return FlatButton(                         //// function type button and return flat button
      onPressed: () {
        playsound(sound_no);
      },
      child: Container(
        width: double.infinity,
        height: 100,
        color: col,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.black,
          body: SafeArea(
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                butt(1, Colors.red),
                butt(2, Colors.orange),
                butt(3, Colors.yellow),
                butt(4, Colors.green),
                butt(5, Colors.blue),
               butt(6, Colors.lightBlueAccent),
                butt(7, Colors.purple),
              ],
            ),
          )),
    );
  }
}




//child: Center(
//child: FlatButton(onPressed: (){
//final player  =AudioCache();
//player.play('note1.wav');
//},
//child: Text('Click me',style:TextStyle(color: Colors.blue)),
//),


