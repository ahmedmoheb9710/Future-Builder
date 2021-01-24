import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "FutureBuilder",
      home: Scaffold(
        appBar: AppBar(title: Text("Future Builder"),),
        body:FutureBuilder(initialData: "what is yor name ?",
          future: _getData(),
          builder: (context,snapshot){
          return Text(
            snapshot.data.toString(),
            style: TextStyle(fontSize: 30),
          );
          },
        )
      ),
    );
  }
 Future<String> _getData() async {
    await Future.delayed(Duration(seconds: 5));
    return "My name is ahmed moheb";
 }

}

