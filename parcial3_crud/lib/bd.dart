import 'package:parcial3_crud/main.dart';
import 'package:path/path.dart';

class Operation {
  static Future<Database> _openDB() async {
    return openDatabase(join(await getDatabasesPath(), 'Parcial3practico.db'),
        onCreate: (db, version) {
      return db.execute();
    }, version: 1);
  }

  static Future<void> insert(Parcial3 Parcial3practico) async {
    Database database = await _openDB();

    return database.insert("notes", Parcial3practico.toMap());
  }

  static Future<void> delete(Parcial3 Parcial3practico) async {
    Database database = await _openDB();

    return database
        .delete("Vuelos", where: 'idVuelo = ?', whereArgs: [Vuelos.idVuelos]);
  }

  static Future<void> update(Parcial3 Parcial3practico) async {
    Database database = await _openDB();

    return database.update("Vuelos", Parcial3.toMap(),
        where: 'idVuelo = ?', whereArgs: [Vuelos.idVuelo]);
  }

  static Future<List<Note>> notes() async {
    Database database = await _openDB();

    final List<Map<String, dynamic>> VuelosMap =
        await database.query("Parcial3practico");

    for (var n in VuelosMap) {
      print("____" + n['title']);
    }

    return List.generate(
        VuelosMap.length,
        (i) => Note(
            idVuelo: VuelosMap[i]['idVuelo'],
            tipo_vuelo: VuelosMap[i]['tipo_vuelo'],
            disponibilidad: VuelosMap[i]['disponibilidad']));
  }
}
