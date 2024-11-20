import 'package:dioapi/dataclass.dart';
import 'package:dioapi/todo.dart';
import 'package:flutter/material.dart';
import 'ApiCall.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dia Api program',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.cyan),
      home: const Homepage(),
    );
  }
}

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'This is Dia API Program',
          style: TextStyle(
            color: Colors.white,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.teal,
      ),
      body: FutureBuilder<List<Information>>(
        future: ApiManager().fetchData(),
        builder:
        (BuildContext context, AsyncSnapshot<List<Information>>
        snapshot){
          if(!snapshot.hasData){
            return const Center(
              child: CircularProgressIndicator());
          }
          else {
            return Container(
                padding: const EdgeInsets.all(20),
                child: DataClass(datalist:snapshot.data as List<Information> ));
          }
        },
      ),
    );
  }
}
