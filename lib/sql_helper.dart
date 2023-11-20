import 'package:sqflite/sqflite.dart' as sql;

class SQLHelper {
  static Future<void> createTables(sql.Database database) async {
    await database.execute("""CREATE TABLE score(
        id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, 
        score INTEGER, 
        timestamp TEXT)""");
  }

  static Future<sql.Database> db() async {
    return sql.openDatabase('dblokasi.db', version: 1,
        onCreate: (sql.Database database, int version) async {
      print('...creating a table');
      await createTables(database);
    });
  }

  static Future<int> resultScore(int score, String timestamp) async {
    final db = await SQLHelper.db();
    final data = {
      'score': score,
      'timestamp': timestamp,
    };
    final id = await db.insert('score', data,
        conflictAlgorithm: sql.ConflictAlgorithm.replace);
    return id;
  }

  static Future<List<Map<String, dynamic>>> getScore() async {
    final db = await SQLHelper.db();
    return db.query('score', orderBy: "id");
  }

  // dapetin satu data
  // static Future<List<Map<String, dynamic>>> getItem(int id) async {
  //   final db = await SQLHelper.db();
  //   return db.query('trx_lokasi', where: "id = ?", whereArgs: [id], limit: 1);
  // }

  //contoh update
  // static Future<int> updateItem(int id, String spkID, String koordinat,
  //     String trxTime, String namaDriver) async {
  //   final db = await SQLHelper.db();
  //   final data = {
  //     'spkID': spkID,
  //     'koordinat': koordinat,
  //     'trxTime': trxTime,
  //     'namaDriver': namaDriver
  // };
  //   final result =
  //       await db.update('trx_lokasi', data, where: "id = ?", whereArgs: [id]);
  //   return result;
  // }
  // contoh hapus data
  // static Future<void> deleteItem(int id) async {
  //   final db = await SQLHelper.db();
  //   try {
  //     await db.delete('score', where: "id = ?", whereArgs: [id]);
  //   } catch (err) {
  //     debugPrint("Terjadi Kesalahan saat menghapus data lokal: $err");
  //   }
  // }
}
