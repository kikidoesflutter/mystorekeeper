import 'package:flutter/foundation.dart';
import '../models/product.dart';
import '../database/database_helper.dart';

class ProductProvider with ChangeNotifier {
  List<Product> _products = [];
  bool _isLoading = false;
  String? _errorMessage;

  List<Product> get products => _products;
  bool get isLoading => _isLoading;
  String? get errorMessage => _errorMessage;

  final DatabaseHelper _dbHelper = DatabaseHelper.instance;

  // Load all products from database
  Future<void> loadProducts() async {
    _isLoading = true;
    _errorMessage = null;
    notifyListeners();

    try {
      _products = await _dbHelper.getAllProducts();
    } catch (e) {
      _errorMessage = 'Failed to load products: $e';
      debugPrint(_errorMessage);
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  // Add a new product
  Future<bool> addProduct(Product product) async {
    try {
      final newProduct = await _dbHelper.createProduct(product);
      _products.insert(0, newProduct);
      notifyListeners();
      return true;
    } catch (e) {
      _errorMessage = 'Failed to add product: $e';
      debugPrint(_errorMessage);
      notifyListeners();
      return false;
    }
  }

  // Update an existing product
  Future<bool> updateProduct(Product product) async {
    try {
      await _dbHelper.updateProduct(product);
      final index = _products.indexWhere((p) => p.id == product.id);
      if (index != -1) {
        _products[index] = product;
        notifyListeners();
      }
      return true;
    } catch (e) {
      _errorMessage = 'Failed to update product: $e';
      debugPrint(_errorMessage);
      notifyListeners();
      return false;
    }
  }

  // Delete a product
  Future<bool> deleteProduct(int id) async {
    try {
      await _dbHelper.deleteProduct(id);
      _products.removeWhere((product) => product.id == id);
      notifyListeners();
      return true;
    } catch (e) {
      _errorMessage = 'Failed to delete product: $e';
      debugPrint(_errorMessage);
      notifyListeners();
      return false;
    }
  }

  // Get a single product by id
  Product? getProductById(int id) {
    try {
      return _products.firstWhere((product) => product.id == id);
    } catch (e) {
      return null;
    }
  }

  // Clear error message
  void clearError() {
    _errorMessage = null;
    notifyListeners();
  }
}