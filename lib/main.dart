import 'package:flutter/material.dart';

void main() {
  runApp(MyMaterialApp());
}

class MyMaterialApp extends StatelessWidget {
  const MyMaterialApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My First App',
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple)),
      home: MyFirstScreen());
  }
}
class MyFirstScreen extends StatefulWidget {
  const MyFirstScreen({super.key});

  @override
  State<MyFirstScreen> createState() => _MyFirstScreenState();
}

class _MyFirstScreenState extends State<MyFirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
           Container(
             padding: EdgeInsets.only(left: 40.0,top: 20.0,right: 20.0, bottom: 20.0),
             margin: EdgeInsets.only(left: 25.0,top: 200.0,right: 20.0, bottom: 50.0),
               height: 400, width: 330, color: Colors.grey,
             child: Row(
               children: [
                 Column(
                  children: [
                    Icon(Icons.diamond,),
                    Text("SHRINE"),
                    Text("Test"),
                    SizedBox(height: 50,),
                    Text("Username", ),
                    SizedBox(height: 10,),
                    SizedBox(
                        width: 250,
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Username',
                          ),
                        )),
                    Text("Password", textDirection: TextDirection.ltr,),
                    SizedBox(height: 10,),
                    SizedBox(
               width: 250,
               child: TextField(
                   obscureText: true,
                   decoration: InputDecoration(
                     border: OutlineInputBorder(),
                     labelText: 'Password',
                   ),
               )),
                    SizedBox(height: 30,),
                    ButtonBar(
                      alignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        TextButton( child: const Text('Cancel'), onPressed: () {}),
                        TextButton( child: const Text('Next'), onPressed: () {}),
                      ],

                    )],),
                  ],), ),
        ],
      ),
    );
  }
}




