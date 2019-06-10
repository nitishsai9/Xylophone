import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
void main()
{
  runApp(
     MaterialApp(
       home: Scaffold(
         backgroundColor: Colors.black,
        body: MyHome(),
       ),

    ),
  );
}
class MyHome extends StatelessWidget {
  void playMe(int num) {
    final player = AudioCache();
            player.play('note$num.wav');
    
  }
  Expanded buildKey({Color color,int number})
{
  return Expanded(
    child: FlatButton(
      child:Text(''),
      color: color,
      onPressed: (){
        playMe(number);
      },
    ),
  );

}
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:Column(
       crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          buildKey(color: Colors.red, number: 1),
         buildKey(color: Colors.green, number: 2),
          buildKey(color: Colors.yellow, number: 3),
          buildKey(color: Colors.teal, number: 4),
          buildKey(color: Colors.blue, number: 5),
          buildKey(color: Colors.pink, number: 6),
          buildKey(color: Colors.orange, number: 7),
        ],
      ),
    );
  }
}