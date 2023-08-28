import 'dart:developer';

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
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: SizedBox(
            width: 512.0,
            child: ListView.builder(
                itemCount: defaultContacts.length,
                itemBuilder: (context, index) {
                  log("index: $index");
                  return ContactRow(contact: defaultContacts[index]);
                }

            )
          )
        )
      )
    );
  }
}
