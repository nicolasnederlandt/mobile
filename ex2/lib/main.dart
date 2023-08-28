import 'package:flutter/material.dart';
import 'property.dart';
import 'property_row.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    final propertiesToDisplay = [
      for(var property in defaultProperties)
        property
    ];
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text("Properties"),
        ),
        body:
            ListView.builder(
                itemCount: propertiesToDisplay.length,
                itemBuilder: (context, index) {
                  return PropertyRow(property: propertiesToDisplay[index]);
                })

      )
    );
  }
}


