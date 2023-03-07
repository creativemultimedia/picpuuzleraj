import 'package:flutter/material.dart';

class buttondemo extends StatefulWidget {
  const buttondemo({Key? key}) : super(key: key);

  @override
  State<buttondemo> createState() => _buttondemoState();
}

class _buttondemoState extends State<buttondemo> {
    int noofbutton=6;
   double spacing = 4;
@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(),
    body: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(child: Container(color: Colors.red,)),
        Expanded(child: Column(
          children: [
            Wrap(
              alignment: WrapAlignment.center,
              runSpacing: spacing,
              spacing: spacing,
              children: List.generate(noofbutton, (index) {
                return Container(
                  width: 50,
                  height: 50,
                  color: Colors.green[200],
                );
              }),
            )
          ],
        )),
      ],
    ),
  );
}
}
