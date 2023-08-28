import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'form_note.dart';
import 'note_row.dart';
import 'note.dart';

class HomeScreen extends StatefulWidget {


  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Note> _notes = defaultNotes;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notes', style: TextStyle( color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
                    itemCount: _notes.length,
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: const BoxDecoration(
                          border: Border(
                            bottom: BorderSide(color: Colors.lightGreen),
                          ),
                        ),

                        child: NoteRow(
                          note: _notes[index],
                          onDelete: (note) => setState(() => _notes.remove(note)),
                        )
                      );
                    })
            ),
            SizedBox(
              height: 200,
              child: FormNote(
                addNote: (note) => setState(() => _notes.add(note)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
