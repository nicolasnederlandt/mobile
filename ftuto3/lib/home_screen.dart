import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ftuto3/my_square.dart';
import 'package:ftuto3/my_switch.dart';

import 'my_form.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {



  var color = "red";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Tutoriel3")),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          children: [
            MySquare(color: color),
            MySwitch(
                color: color,
                setColor: (value) => setState( () => color = value)
            ),
            MyForm(
                (value) => setState( () => color = value),
            )
          ],
        ),
      )
    );
  }
}
