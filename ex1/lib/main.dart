import 'package:flutter/material.dart';

import 'laureate.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

    const MyApp({Key? key}) : super(key: key);



    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        title: 'Flutter ex1',
        home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.lightBlueAccent,

            title: const Text('View a Nobel Prize', style: const TextStyle(color: Colors.white),),
          ),
          body: ListView(
            children: [
              Laureate(
                laureate1["motivation"]!,
                firstname: laureate1["firstname"] ?? "",
                surname: laureate1["surname"] ?? "",
              )
            ],
          )
        )
      );
  }
}

const laureate1 = {
  "id": "819",
  "firstname": "Al",
  "surname": "Gore",
  "motivation":
  "\"for their efforts to build up and disseminate greater knowledge about man-made climate change, and to lay the foundations for the measures that are needed to counteract such change\"",
  "share": "2"
};
