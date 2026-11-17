import 'package:flutter/foundation.dart';
import 'package:esilv_shop/model/product.dart';

    class Cart extends ChangeNotifier {
  final List<Product> _products = [];

  void addProduct(Product product) {
    _products.add(product);
    notifyListeners();
  }

  void removeProduct(Product product) {
    _products.remove(product);
    notifyListeners();
  }

  List<Product> get products => _products;
  }