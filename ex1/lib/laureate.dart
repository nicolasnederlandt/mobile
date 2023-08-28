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
          margin: const EdgeInsets.only(top: 20),
          color: Colors.blueAccent,
          child: Text(motivation),
        ),
        Text(
          "$firstname $surname"

        )
      ]
    );
  }
}
