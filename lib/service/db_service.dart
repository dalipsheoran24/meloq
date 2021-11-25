// import 'package:meloq/models/video_model.dart';
// import 'package:path/path.dart';
// import 'package:sqflite/sqflite.dart';
//
//
// class DownloadDbService {
//   static DownloadDbService ?_instance;
//
//   DownloadDbService._internal() {
//     init();
//   }
//
//   static DownloadDbService? getInstance() {
//     if (_instance == null) {
//       _instance = DownloadDbService._internal();
//     }
//     return _instance;
//   }
//
//   final String tableName = "TodoTable";
//   Database database;
//
//   init() async {
//     var databasesPath = await getDatabasesPath();
//     String path = join(databasesPath, 'todo_db.db');
//
//     database =
//     await openDatabase(path, version: 3, onCreate: (db, version) async {
//       await db.execute(
//           "create table $tableName (id integer primary key autoincrement,title text,description text,image text,price text,mainVideo text,otherVideo text)");
//       print("Table created !");
//     });
//   }
//
//   Future<bool> createTodo(ProductVideoInfo todoInfo) async {
//     try {
//       if (database != null) {
//         database.insert(tableName, todoInfo.toJson());
//         print("Download  video added successfully");
//         return true;
//       }
//     } catch (e) {
//       print("DownloadVideo create $e");
//     }
//     return false;
//   }
//
//   Future<List<ProductVideoInfo>> getAllDueTodo() async {
//     if (database == null) return [];
//
//     List<Map<String, dynamic>> mapList =
//     await database.rawQuery("Select * from $tableName where id");
//
//     if (mapList == null) {
//       return [];
//     }
//
//     List<ProductVideoInfo> videoList = [];
//     mapList.forEach((map) {
//       videoList.add(ProductVideoInfo.fromJson(map));
//     });
//
//     return videoList;
//   }
//
//   Future<List<ProductVideoInfo>> getAllDoneTodo() async {
//     if (database == null) return [];
//
//     List<Map<String, dynamic>> mapList =
//     await database.rawQuery("Select * from $tableName where id=1");
//
//     if (mapList == null) {
//       return [];
//     }
//
//     List<ProductVideoInfo> todoList = [];
//     mapList.forEach((map) {
//       todoList.add(ProductVideoInfo.fromJson(map));
//     });
//
//     return todoList;
//   }
//
//   Future<bool> markTodoComplete(int id) async {
//     try {
//       database
//           .rawUpdate("update $tableName set isCompleted=1 where id = ?", [id]);
//       print("TodoDbService markTodoDone updated");
//       return true;
//     } catch (e) {
//       print("TodoDbService markTodoDone err:$e");
//     }
//     return false;
//   }
// }
