import 'package:flutter/material.dart';
import 'package:flutter_a2z/dao/note_dao.dart';
import 'package:flutter_a2z/models/note_model.dart';
import 'package:flutter_a2z/screens/local_storage/flutter_with_sqlite/edit_note_page.dart';
import 'package:flutter_a2z/screens/local_storage/flutter_with_sqlite/note_card_widget.dart';
import 'package:flutter_a2z/screens/local_storage/flutter_with_sqlite/note_details_Screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FlutterWithSqliteScreen extends StatefulWidget {
  final String title;
  final Object model;

  const FlutterWithSqliteScreen({
    Key? key,
    required this.title,
    required this.model,
  }) : super(key: key);

  @override
  State<FlutterWithSqliteScreen> createState() => _FlutterWithSqliteScreenState();
}

class _FlutterWithSqliteScreenState extends State<FlutterWithSqliteScreen> {
  late NoteDao noteDao;
  late List<Note> notes = [];
  bool isLoading = false;

  final _lightColors = [
    Colors.amber.shade300,
    Colors.lightGreen.shade300,
    Colors.lightBlue.shade300,
    Colors.orange.shade300,
    Colors.pinkAccent.shade100,
    Colors.tealAccent.shade100
  ];

  @override
  void initState() {
    super.initState();
    noteDao = NoteDao();
  }

  @override
  void dispose() {
    super.dispose();
  }

  Future refreshNotes() async {
    setState(() => isLoading = true);
    notes = await noteDao.readAllNotes();
    setState(() => isLoading = false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: isLoading
          ? Center(
              child: Row(
                children: const [
                  CircularProgressIndicator(),
                  SizedBox(width: 10),
                  Text('Uploads note, please wait...'),
                ],
              ),
            )
          : notes.isEmpty
              ? Center(
                  child: Row(
                    children: const [
                      Icon(
                        FontAwesomeIcons.info,
                        size: 40,
                        color: Colors.red,
                      ),
                      SizedBox(width: 10),
                      Text('No notes available'),
                    ],
                  ),
                )
              : StaggeredGridView.countBuilder(
                  padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                  itemCount: notes.length,
                  crossAxisCount: 4,
                  mainAxisSpacing: 4,
                  crossAxisSpacing: 4,
                  itemBuilder: (context, index) {
                    final note = notes[index];
                    return GestureDetector(
                      onTap: () async {
                        await Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => NoteDetailsScreen(noteId: note.id!),
                          ),
                        );
                        refreshNotes();
                      },
                      child: NoteCardWidget(note: note, index: index),
                    );
                  },
                  staggeredTileBuilder: (int index) => const StaggeredTile.fit(2),
                ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        child: const Icon(Icons.add),
        onPressed: () async {
          await Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const AddEditNotePage()),
          );

          refreshNotes();
        },
      ),
    );
  }

  /// To return different height for different widgets
  double getMinHeight(int index) {
    switch (index % 4) {
      case 0:
        return 100;
      case 1:
        return 150;
      case 2:
        return 150;
      case 3:
        return 100;
      default:
        return 100;
    }
  }
}
