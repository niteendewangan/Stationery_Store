import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class InventoryDatabase {
  static final InventoryDatabase instance = InventoryDatabase._init();
  static Database? _database;

  InventoryDatabase._init();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDB('inventory.db');
    return _database!;
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);

    return await openDatabase(path, version: 1, onCreate: _createDB);
  }

  Future _createDB(Database db, int version) async {
    await db.execute('''
      CREATE TABLE inventory (
        id TEXT PRIMARY KEY,
        name TEXT NOT NULL,
        stock INTEGER NOT NULL,
        price REAL NOT NULL,
        category TEXT NOT NULL,
        description TEXT
      )
    ''');
  }

  // Add a new product to the inventory
  Future<void> addProduct(Map<String, dynamic> product) async {
    final db = await instance.database;
    await db.insert('inventory', product, conflictAlgorithm: ConflictAlgorithm.replace);
  }

  // Update stock for a product
  Future<void> updateStock(String id, int newStock) async {
    final db = await instance.database;
    await db.update(
      'inventory',
      {'stock': newStock},
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  // Get all products
  Future<List<Map<String, dynamic>>> getAllProducts() async {
    final db = await instance.database;
    return await db.query('inventory');
  }

  // Delete a product
  Future<void> deleteProduct(String id) async {
    final db = await instance.database;
    await db.delete(
      'inventory',
      where: 'id = ?',
      whereArgs: [id],
    );
  }
}
