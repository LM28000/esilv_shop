class Product {
  final int id;
  final String title;
  final String description;
  final String category;
  final String image;
  final num price;
  final double rating;

  //Constructeur avec les paramètres nommés "required"
  Product({
    required this.id,
    required this.title,
    required this.image,
    required this.price,
    required this.category,
    required this.description,
    required this.rating,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Product && id == other.id;

  @override
  int get hashCode => id.hashCode;
  String getPrice() => "${price.toStringAsFixed(2)}€";

  Map<String, dynamic> toMap() {
    return {
      'id': this.id,
      'title': this.title,
      'description': this.description,
      'category': this.category,
      'image': this.image,
      'price': this.price,
      'rating': {'rate': this.rating},
    };
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    final ratingMap = map['rating'] as Map<String, dynamic>?;
    final rate = (ratingMap?['rate'] as num?)?.toDouble() ?? 0.0;
    return Product(
      id: map['id'] as int,
      title: map['title'] as String,
      description: map['description'] as String,
      category: map['category'] as String,
      image: map['image'] as String,
      price: map['price'] as num,
      rating: rate,
    );
  }
}
