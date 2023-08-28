import 'package:flutter/material.dart';

class Laureate extends StatelessWidget {

  final String firstname ;
  final String surname;
  final String motivation;

  const Laureate(this.motivation, {Key? key, this.firstname = "", this.surname = "", }): super(key: key);


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        
        Container(
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.only(top: 20),
          color: Colors.blueAccent,


          child: Text(motivation, style: const TextStyle(color: Colors.white), textAlign: TextAlign.center),
        ),
        Text(

          "$firstname $surname",


        )
      ]
    );
  }
}
