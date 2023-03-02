import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'level.dart';

class Game_Play extends StatefulWidget {
  int pos;
  Game_Play(this.pos);

  @override
  State<Game_Play> createState() => _Game_PlayState();
}

class _Game_PlayState extends State<Game_Play> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Level : ${widget.pos+1}"),
      ),
      body: Center(child: ElevatedButton(onPressed: () async {
        final prefs = await SharedPreferences.getInstance();
        await prefs.setString('level${widget.pos}', "win");
        await prefs.setInt('lastlevel', widget.pos);
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
          return level();
        },));
      },child: Text("Submit")),),
    );
  }
}
