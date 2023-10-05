import 'package:flutter/material.dart';
import 'package:flutter_project/secondscreen.dart';

void main() => runApp(const Mymaterial());

class Mymaterial extends StatelessWidget {
  const Mymaterial({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  Signinpage(title: 'Sign IN', ),
    );
  }
}

class Signinpage extends StatefulWidget {
  const Signinpage({super.key, required this.title });
  final String title;

  @override
  State<Signinpage> createState() => _SigninpageState();
}

class _SigninpageState extends State<Signinpage> {

  final username =TextEditingController();
  final password =TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: const SizedBox(
        child: Center(
          child: Column(
            children: <Widget>[
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
        ),

        leading: IconButton(icon: Icon ( Icons.menu, color: Colors.white,), onPressed: () async { },  ),
        actions: [
          //IconButton(icon: Icon(Icons.diamond, color: Colors.amber,),alignment: Alignment.center,onPressed: () {  },),

          IconButton(icon: const Icon( Icons.account_circle_rounded, color: Colors.amber,),onPressed: () {  },),
        ],
         backgroundColor: Colors.black,
      ) ,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget> [
            const SizedBox(height: 80.0,),
            Column(
              children: <Widget>[
                const Icon(Icons.diamond, color: Colors.amber, size: 70,),
                const SizedBox(height: 16.0,),
                const Text("SHRINE", style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w800,
                  letterSpacing: 0.8,
                  fontSize: 20,
                ),),
                const SizedBox(height: 120.0,),
                // TODO: Remove filled: true values (103)
                // TODO: Add TextField widgets (101)
                // TODO: Add button bar (101)
              ],
            ),

             TextField(
              controller: username,
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

             TextField(
              controller: password,
              decoration: InputDecoration(
                filled: true,
                labelText: 'Password',
              ),
                obscureText:true,
            ),

            const SizedBox(height: 70.0,),

          OverflowBar(
            alignment: MainAxisAlignment.end,
            children: <Widget>[

              TextButton(child: const Text("CANCEL"), onPressed: (){
                username.clear();
                password.clear();
              } ),

              ElevatedButton(onPressed: (){
                var builder;
                Navigator.push(
                  context,MaterialPageRoute(builder: (context) =>
                    SecondScreen(data: "Welcome  ${username.text}",passdate: "password : ${password.text}",))
                );
              },style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                ),
                  child: const Text("NEXT",style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    letterSpacing: 0.8,
                  ),)),

            ],

          )

          ],

        ),
      ),
    );
  }
}

