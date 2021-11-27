import 'package:flutter/material.dart';
import 'package:flutter_a2z/dao/note_dao.dart';
import 'package:flutter_a2z/models/note_model.dart';
import 'package:flutter_a2z/screens/local_storage/flutter_with_sqlite/edit_note_page.dart';
import 'package:intl/intl.dart';

class NoteDetailsScreen extends StatefulWidget {
  final int noteId;
  const NoteDetailsScreen({Key? key, required this.noteId}) : super(key: key);

  @override
  State<NoteDetailsScreen> createState() => _NoteDetailsScreenState();
}

class _NoteDetailsScreenState extends State<NoteDetailsScreen> {
  late NoteDao noteDao;
  late Note note;
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    noteDao = NoteDao();
    refreshNotes();
  }

  Future refreshNotes() async {
    setState(() => isLoading = true);
    note = (await noteDao.readNote(widget.noteId))!;
    setState(() => isLoading = false);
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          actions: [editButton(), deleteButton()],
        ),
        body: isLoading
            ? Center(child: CircularProgressIndicator())
            : Padding(
                padding: EdgeInsets.all(12),
                child: ListView(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  children: [
                    Text(
                      note.title,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      DateFormat.yMMMd().format(note.createdTime),
                      style: TextStyle(color: Colors.white38),
                    ),
                    SizedBox(height: 8),
                    Text(
                      note.description,
                      style: TextStyle(color: Colors.white70, fontSize: 18),
                    )
                  ],
                ),
              ),
      );

  Widget editButton() => IconButton(
      icon: Icon(Icons.edit_outlined),
      onPressed: () async {
        if (isLoading) return;

        await Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => AddEditNotePage(note: note),
        ));

        refreshNotes();
      });

  Widget deleteButton() => IconButton(
        icon: Icon(Icons.delete),
        onPressed: () async {
          await noteDao.delete(widget.noteId);

          Navigator.of(context).pop();
        },
      );
}
