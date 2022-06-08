import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: toggel(),
    ); 
  }
}

class toggel extends StatefulWidget {
  toggel({Key? key}) : super(key: key);

  @override
  State<toggel> createState() => _toggelState();
}

class _toggelState extends State<toggel> {
   Color color = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
     body: SafeArea(
       child: Center(
         child: Row(
           mainAxisAlignment: MainAxisAlignment.center,
           
           children: [
             ElevatedButton(
               child: Text("Red"),
               onPressed: () {
                 print(5);
                setState(() {
                  color = Colors.red; 
                 });

               print(color);
               },
               ),
               SizedBox(width: 20),
             ElevatedButton(
               child: Text("Black"),
               onPressed: () {
                 print(6);
                  setState(() {
                  color = Colors.black; 
                 });
                 
                 print(color);
               },
               ),
           ],
         ),
       ),
          ),
    );
  }
}
