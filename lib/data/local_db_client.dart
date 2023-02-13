import 'dart:io';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

import 'package:devstack/data/data_model.dart';

class LocalDbClient {
  LocalDbClient();

  static Database? _db;

  static String table = 'local_data';
  static String columnId = 'id';
  static String columnName = 'name';
  static String columnSwitch1 = 'switch1';
  static String columnSwitch2 = 'switch2';
  static String columnSwitch3 = 'switch3';
  static String columnOrder = 'ord';

  Future<void> init() async {
    Directory? documentsDirectory = Platform.isAndroid
        ? await getExternalStorageDirectory()
        : await getApplicationSupportDirectory();

    var path = p.join(documentsDirectory!.path, 'switcher.db');

    _db = await openDatabase(path, version: 1,
        onCreate: (Database db, int version) async {
      await db.execute('''create table $table (
          $columnId text not null,
          $columnName text not null,
          $columnSwitch1 integer not null, 
          $columnSwitch2 integer not null, 
          $columnSwitch3 integer not null, 
          $columnOrder integer not null 
        )''');
      await db.execute('create index id_index on $table($columnId)');
    });
  }

  Future<List<DataModelDb>> selectAll() async {
    List<Map> queryData = await _db!.rawQuery('''SELECT * FROM $table ''');
    return queryData.isNotEmpty
        ? queryData
            .map(
              (value) => DataModelDb.fromJson(Map<String, dynamic>.from(value)),
            )
            .toList()
        : [];
  }

  Future<List<DataModelDb>> select(DataModel data) async {
    var queryData = await _db!.rawQuery('''SELECT * 
      FROM $table
      WHERE $columnId  = '${data.id}'   
      ''');
    return queryData.isNotEmpty
        ? queryData
            .map(
              (value) => DataModelDb.fromJson(Map<String, dynamic>.from(value)),
            )
            .toList()
        : [];
  }

  Future<void> updateData({required DataModelDb data}) async {
    await _db!.rawUpdate('''
        UPDATE $table 
        SET $columnName = '${data.name}',
          $columnSwitch1 = ${data.switch1},
          $columnSwitch2 = ${data.switch2},
          $columnSwitch3 = ${data.switch3},
          $columnOrder = ${data.ord}   
        WHERE $columnId = '${data.id}'
        ''');
  }

  Future<void> insertData({required DataModelDb dataModelDb}) async {
    await _db!.rawInsert('''INSERT INTO $table(
          $columnId, 
          $columnName, 
          $columnSwitch1, 
          $columnSwitch2,
          $columnSwitch3, 
          $columnOrder) 
        VALUES(
          '${dataModelDb.id}', 
          '${dataModelDb.name}', 
          ${dataModelDb.switch1}, 
          ${dataModelDb.switch2}, 
          ${dataModelDb.switch3},
          ${dataModelDb.ord} 
        )''');
  }

  Future<void> dispose() async {
    await _db!.close();
  }
}
