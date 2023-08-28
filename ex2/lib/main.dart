import 'package:flutter/material.dart';
import 'property.dart';
import 'property_row.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  var showState = "Sell";
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    final propertiesToDisplay = [
      for(var property in defaultProperties)
        if(property.state == showState) property

    ];
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("To sell"),
              Switch(
                  value: showState == "Sell",
                  onChanged: (bool value) {
                    setState(() {
                      if(showState == "Sell") {
                        showState = "Loan";
                      } else {
                        showState = "Sell";
                      }
                    });
                  }),
              const Text("To loan"),
            ],
          ),
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


