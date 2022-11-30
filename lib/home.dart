import 'package:calculator/button.dart';
import 'package:flutter/material.dart';
class Home  extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor:Colors.black,
        title:const Align(
          alignment: Alignment.center,
          child: Text("Helicopter Calculator"),
        ),
      ),
       body:Column(
           mainAxisAlignment: MainAxisAlignment.end,
           children: [
           Button(),
       ],//children
    ),
       );
  }
}
