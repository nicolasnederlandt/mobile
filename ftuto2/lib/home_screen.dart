import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'contact_row.dart';
import 'contact.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});


  @override
  Widget build(BuildContext context) {
    final contactRows = defaultContacts
        .map((contact) => ContactRow(contact:contact))
        .toList();

    return Scaffold(
      appBar: AppBar(title: const Text("Contact List")),
      body: ListView(children: contactRows),
    );
  }
}
