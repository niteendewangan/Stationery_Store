import 'inventory_db.dart';

void main() async {
  // Initialize database
  final db = InventoryDatabase.instance;

  // Adding a new product
  await db.addProduct({
    'id': '1',
    'name': 'Notebook',
    'stock': 100,
    'price': 30.0,
    'category': 'Stationery',
    'description': 'A5 size notebook'
  });

  // Updating product stock
  await db.updateStock('1', 90);

  // Fetching all products
  List<Map<String, dynamic>> products = await db.getAllProducts();
  print(products); // Print to console for testing
}
