import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:save_file_flutter_template/constant.dart';
import 'package:save_file_flutter_template/save_file.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  


  @override
  Widget build(BuildContext context) {
   int endTime = DateTime.now().millisecondsSinceEpoch + 1000 * 30;

    return Scaffold(
      appBar: AppBar(
      
        title: Text("GFG Save Data in your local device"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
   
          child: Text("Text need to be store in file\n $myList"),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
      FileStorage.writeCounter(
                     myList.toString(), "geeksforgeeks.txt",context);
        },
        tooltip: 'Save File',
        child: const Icon(Icons.save),
      ), 
    );
  }
}
