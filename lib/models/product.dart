class Product {
  final int? id;
  final String name;
  final int quantity;
  final double price;
  final String? imagePath;

  Product({
    this.id,
    required this.name,
    required this.quantity,
    required this.price,
    this.imagePath,
  });

  // Convert Product to Map for database insertion
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'quantity': quantity,
      'price': price,
      'imagePath': imagePath,
    };
  }

  // Create Product from Map (database query result)
  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      id: map['id'] as int?,
      name: map['name'] as String,
      quantity: map['quantity'] as int,
      price: map['price'] as double,
      imagePath: map['imagePath'] as String?,
    );
  }

  // Create a copy of Product with updated fields
  Product copyWith({
    int? id,
    String? name,
    int? quantity,
    double? price,
    String? imagePath,
  }) {
    return Product(
      id: id ?? this.id,
      name: name ?? this.name,
      quantity: quantity ?? this.quantity,
      price: price ?? this.price,
      imagePath: imagePath ?? this.imagePath,
    );
  }

  @override
  String toString() {
    return 'Product{id: $id, name: $name, quantity: $quantity, price: $price, imagePath: $imagePath}';
  }
}