

import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  var data;
  var passdate;
   SecondScreen({this.data, this.passdate, super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: const Text("") ,
        automaticallyImplyLeading:true
    ),
        body: Center(
        child: Column(
        children: <Widget>[
          Text("${widget.data}"),
          Text("${widget.passdate}"),

          const SizedBox(height: 70.0,),
          
          ElevatedButton(onPressed: (){},   style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,
            fixedSize: const Size(150, 60),
          ),child: const Text("Next", style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w900,
            letterSpacing: 0.8,
            fontSize: 25,
          ),), ),
      ],
    ),
    ),
    );
  }
}
 