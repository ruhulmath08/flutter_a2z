import 'package:flutter_a2z/models/note_model.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class FlutterA2zDatabase {
  static final FlutterA2zDatabase instance = FlutterA2zDatabase._init();

  static Database? _database;

  FlutterA2zDatabase._init();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDB('flutter_a2z.db');

    return _database!;
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);

    return openDatabase(path, version: 1, onCreate: _createDB);
  }

  Future _createDB(Database db, int version) async {
    const idType = 'INTEGER PRIMARY KEY AUTOINCREMENT';
    const boolType = 'BOOLEAN NOT NULL';
    const intType = 'INTEGER NOT NULL';
    const textType = 'TEXT NOT NULL';

    await db.execute(
      '''
    CREATE TABLE $tableNotes ( ${NoteFields.id} $idType,
    ${NoteFields.isImportant} $boolType,
    ${NoteFields.number} $intType,
    ${NoteFields.title} $textType,
    ${NoteFields.description} $textType,
    ${NoteFields.createdTime} $textType
    ) ''',
    );
  }

  Future close() async {
    final db = await instance.database;
    db.close();
  }
}
