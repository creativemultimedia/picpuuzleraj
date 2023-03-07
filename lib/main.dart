import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:picpuuzleraj/level.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'buttondemo.dart';
import 'level_page.dart';


void main()
{
  runApp(MaterialApp(home: buttondemo(),));
}
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: ElevatedButton(onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return level();
          },));
    },
    child: Text("Play")),),);
  }
}
