import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

// User Model
class User {
  final int? id;
  final String name;
  final String email;
  final String password;
  final String age;
  final String dob;

  User({
    this.id,
    required this.name,
    required this.email,
    required this.password,
    required this.age,
    required this.dob,
  });

  // Convert a User object into a map
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'password': password,
      'age': age,
      'dob': dob,
    };
  }

  // Convert a map into a User object
  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['id'],
      name: map['name'],
      email: map['email'],
      password: map['password'],
      age: map['age'],
      dob: map['dob'],
    );
  }
}

// Database helper class
class DatabaseHelper {
  static final DatabaseHelper instance = DatabaseHelper._init();
  static Database? _database;

  DatabaseHelper._init();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDB('users.db');
    return _database!;
  }

  // Initialize the database
  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);
    return await openDatabase(path, version: 1, onCreate: _createDB);
  }

  // Create the Users table
  Future _createDB(Database db, int version) async {
    const idType = 'INTEGER PRIMARY KEY AUTOINCREMENT';
    const textType = 'TEXT NOT NULL';

    await db.execute('''
    CREATE TABLE users (
      id $idType,
      name $textType,
      email $textType,
      password $textType,
      age $textType,
      dob $textType
    );
    ''');
  }

  // Insert a new user
  Future<int> insertUser(User user) async {
    final db = await instance.database;
    return await db.insert('users', user.toMap());
  }

  // Query user by email and password
  Future<User?> getUser(String email, String password) async {
    final db = await instance.database;
    final maps = await db.query(
      'users',
      columns: ['id', 'name', 'email', 'password', 'age', 'dob'],
      where: 'email = ? AND password = ?',
      whereArgs: [email, password],
    );

    if (maps.isNotEmpty) {
      return User.fromMap(maps.first);
    } else {
      return null;
    }
  }
}
