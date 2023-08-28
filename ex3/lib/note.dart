class Note {
  final String title;
  final String text;

  Note({required this.title, required this.text});

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Note && runtimeType == other.runtimeType && title == other.title;

  @override
  int get hashCode => title.hashCode;
}


List<Note> _createNotes() {
  final notes = List.generate(
    100,
      (i) => Note(title: "$i : titre", text: "$i : text")
  );

  return [...notes];
}

final defaultNotes = _createNotes();

