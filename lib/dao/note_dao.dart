import 'package:flutter_a2z/local_storage_config/sqlite_config/flutter_a2z_database.dart';
import 'package:flutter_a2z/models/note_model.dart';

class NoteDao {
  final FlutterA2zDatabase flutterA2zDatabase = FlutterA2zDatabase.instance;

  Future<Note> createNote(Note note) async {
    final db = await flutterA2zDatabase.database;
    final id = await db.insert(tableNotes, note.toJson());

    return note.copy(id: id);
  }

  Future<Note?> readNote(int id) async {
    final db = await flutterA2zDatabase.database;
    final maps = await db.query(
      tableNotes,
      columns: NoteFields.values,
      where: '${NoteFields.id} = ?',
      whereArgs: [id],
    );

    if (maps.isNotEmpty) {
      return Note.formJson(maps.first);
    } else {
      return null;
    }
  }

  Future<List<Note>> readAllNotes() async {
    final db = await flutterA2zDatabase.database;
    const orderBy = '${NoteFields.title} ASC';
    final result = await db.query(tableNotes, orderBy: orderBy);

    return result.map((json) => Note.formJson(json)).toList();
  }

  Future<int> update(Note note) async {
    final db = await flutterA2zDatabase.database;
    return db.update(
      tableNotes,
      note.toJson(),
      where: '${NoteFields.id} = ?',
      whereArgs: [note.id],
    );
  }

  Future<int> delete(int id) async {
    final db = await flutterA2zDatabase.database;
    return db.delete(
      tableNotes,
      where: '${NoteFields.id} = ?',
      whereArgs: [id],
    );
  }
}
