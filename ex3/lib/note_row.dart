import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'note.dart';

class NoteRow extends StatelessWidget {

  final Note note;
  final void Function(Note note) onDelete;

  const NoteRow({super.key,required this.note, required this.onDelete });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(note.title),
      subtitle: Text(note.text),
      trailing: IconButton(
        icon: const Icon(Icons.delete),
        onPressed: () => onDelete(note),
      ),
    );
  }
}
