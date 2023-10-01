import 'package:flutter/material.dart';

void main() => runApp(const Mymaterial());

class Mymaterial extends StatelessWidget {
  const Mymaterial({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:myfirstscreen(),
    );
  }
}

class myfirstscreen extends StatelessWidget {
  const myfirstscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: const SizedBox(
        child: Center(
          child: Column(
            children: [
              Icon(Icons.diamond, color: Colors.amber, ),
              Text("SHRINE",style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w800,
                letterSpacing: 0.8,
                fontSize: 12,
              ),),
            ],
          ),
        ),
      ) ,
      leading: IconButton (icon: const Icon(Icons.menu), onPressed: () {  },),

        actions: [
          //IconButton(icon: Icon(Icons.diamond, color: Colors.amber,),alignment: Alignment.center,onPressed: () {  },),

          IconButton(icon: const Icon(Icons.account_circle_rounded),onPressed: () {  },),
        ],

        backgroundColor: Colors.black,
      ),
      
      body: ListView(
    children: [
      Column(
          children: [
           Container(
             padding: const EdgeInsets.fromLTRB(35,100,35,0),

            child: Column(
              children: [
                const Icon(Icons.diamond, color: Colors.amber, size: 70,),

                const SizedBox(height: 10.0,),

                const Text("SHRINE", style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w800,
                  letterSpacing: 0.8,
                  fontSize: 20,
                ),),

                const SizedBox(height: 120.0,),

                const TextField(
                  decoration: InputDecoration(
                    filled: true,
                    labelText: 'Username',
                  ),
                  style: TextStyle(
                    color: Colors.black,
                    letterSpacing: 0.8,
                    fontSize: 20,
                  ),
                ),

                const SizedBox(height: 12.0,),

                const TextField(
                  decoration: InputDecoration(
                    filled: true,
                    labelText: 'Password',
                  ),
                ),

                const SizedBox(height: 70.0,),
                
                ElevatedButton(onPressed: () { Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
               backgroundColor: Colors.black,
                  fixedSize: const Size(150, 60),
                ),
                child: const Text("Sign IN", style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                  letterSpacing: 0.8,
                  fontSize: 25,
                ),),
                ),


              ],
            ),



      ),

        ],
      ),

    ],
    )
    );
  }
}
