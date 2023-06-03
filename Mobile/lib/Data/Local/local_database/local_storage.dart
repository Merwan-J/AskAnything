import 'package:askanything/domain/question/question.dart';
import 'package:askanything/infrastructure/question/question_dto.dart';
import 'package:askanything/infrastructure/user/user_dto.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  DatabaseHelper._privateConstructor();

  static final DatabaseHelper instance = DatabaseHelper._privateConstructor();

  static Database? _database;

  Future<Database> get database async => _database ??= await _initDatabase();

  Future<Database> _initDatabase() async {
    String path = join(await getDatabasesPath(), 'askanything.db');
    return await openDatabase(path, version: 3, onCreate: _onCreate);
  }

  Future<void> _onCreate(Database db, int version) async {
    await db.execute('''
    CREATE TABLE profile(
      id INTEGER PRIMARY KEY,
      name TEXT,
      profilePicture TEXT,
      reputation INTEGER,
      following TEXT,
      followers TEXT,
      questions TEXT,
      answers TEXT
    )
  ''');

    await db.execute('''
    CREATE TABLE question(
      id TEXT PRIMARY KEY,
      title TEXT,
      description TEXT,
      author TEXT,
      anonymous INTEGER,
      answers TEXT,
      topic TEXT,
      likes TEXT,
      dislikes TEXT,
      image TEXT,
      createdAt TEXT,
      updatedAt TEXT
    )
  ''');

    await db.execute('''
    CREATE TABLE answer(
      id TEXT PRIMARY KEY,
      text TEXT,
      image TEXT,
      anonymous INTEGER,
      question TEXT,
      likes TEXT,
      dislikes TEXT,
      author TEXT,
      createdAt TEXT,
      updatedAt TEXT
    )
  ''');

    await db.execute('''
CREATE TABLE user (
  id TEXT PRIMARY KEY,
  name TEXT,
  email TEXT,
  password TEXT,
  profilePic TEXT,
  questionIds TEXT, 
  answerIds TEXT,
  reputation INTEGER,
  likes TEXT,
  dislikes TEXT,
  bookmarks TEXT,
  followers TEXT,
  following TEXT,
  createdAt TEXT,
  updatedAt TEXT
)
''');
  }

// get a single question
  Future<QuestionDto> getQuestion(String id) async {
    final Database db = await instance.database;
    final List<Map<String, dynamic>> question = await db.query(
      'question',
      where: 'id = ?',
      whereArgs: [id],
    );

    QuestionDto questionDto = QuestionDto.fromjsonForDb(question.first);
    return questionDto;
  }

// get all questions that returns dto
  Future<List<QuestionDto>> getQuestions() async {
    final Database db = await instance.database;
    final List<Map<String, dynamic>> questions = await db.query('question');
    print("get all questions");
    print(questions.toList());
    print("databasesdfghjkl;'vlskndvpnsad'p[ivndsop'b[vnio]]");
    return questions
        .map((question) => QuestionDto.fromjsonForDb(question))
        .toList();
  }

// insert a question and take dto as input
  Future<void> insertQuestion(QuestionDto questionDto) async {
    final Database db = await instance.database;
    print("inserting  a single  question");
    await db.insert(
      'question',
      questionDto.toJsonForDb(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

// update a question and accept dto as input
  Future<void> updateQuestion(QuestionDto questionDto) async {
    final Database db = await instance.database;
    await db.update(
      'question',
      questionDto.toJsonForDb(),
      where: 'id = ?',
      whereArgs: [questionDto.id],
    );
  }

// delete a question
  Future<void> deleteQuestion(String id) async {
    final Database db = await instance.database;
    await db.delete(
      'question',
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  // insert questions in bulk
  Future<void> insertQuestions(List<QuestionDto> questionDtos) async {
    final Database db = await instance.database;
    // print(questionDtos.toJsonForDb());
    print("inserting questions");
    print(questionDtos);
    Batch batch = db.batch();
    questionDtos.forEach((questionDto) {
      batch.insert(
        'question',
        questionDto.toJsonForDb(),
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
    });
    await batch.commit(noResult: true);
  }

  // insert a user and take dto as input
  Future<void> insertUser(UserDTO userDto) async {
    print("inserting user DB");
    final Database db = await instance.database;
    print(userDto.toJsonForDb());
    await db.insert(
      'user',
      userDto.toJsonForDb(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
    print("inserted user");
  }

  // get a user
  Future<UserDTO> getUser(String id) async {
    print("getting user DB");
    final Database db = await instance.database;

    final List<Map<String, dynamic>> user = await db.query(
      'user',
      where: 'id = ?',
      whereArgs: [id],
    );
    print("got user DB");
    // print(user);
    print(user.first);
    return UserDTO.fromJsonForDb(user.first);
  }

  // update a user and accept dto as input
  Future<void> updateUser(UserDTO userDto) async {
    final Database db = await instance.database;
    await db.update(
      'user',
      userDto.toJson(),
      where: 'id = ?',
      whereArgs: [userDto.id],
    );
  }

  // insert question accepts json
  Future<void> insertQuestionJson(Map<String, dynamic> question) async {
    final Database db = await instance.database;
    await db.insert(
      'question',
      question,
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  // clear database
  Future<void> clearDatabase() async {
    final Database db = await instance.database;
    await db.delete('question');
    await db.delete('user');
    await db.delete('profile');
  }
}
