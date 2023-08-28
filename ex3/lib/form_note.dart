import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'note.dart';

class FormNote extends StatefulWidget {

  final void Function(Note) addNote;

  const FormNote({Key? key, required this.addNote}) : super(key: key);

  @override
  State<FormNote> createState() => _FormNoteState();
}

class _FormNoteState extends State<FormNote> {

  final titleController = TextEditingController();
  final textControllerller = TextEditingController();
  final key = GlobalKey<FormState>();

  @override
  void dispose(){
    titleController.dispose();
    textControllerller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: key,
        child: Column(
          children: [
            Expanded(
              child: TextFormField(
                controller: titleController,
                decoration: const InputDecoration(labelText: "Note title"),
                validator: (value) =>
                    ( value == null || value.isEmpty) ? "Title cannot be empty" : null,
              ),
            ),
            Expanded(
                child: TextFormField(
                  controller: textControllerller,
                  decoration: const InputDecoration(labelText: "Note text"),
                  validator: (value) =>
                    (value == null || value.isEmpty) ? " Text cannot be empty" : null,
                ),
            ),
            ElevatedButton(
                onPressed: () {
                  if (key.currentState!.validate()) {
                    widget.addNote(Note(title: titleController.text, text: textControllerller.text));
                    titleController.text = "";
                    textControllerller.text = "";
                  }
                },
                child: const Text("Add note"),
            )
          ],
        ),
    );
  }
}
