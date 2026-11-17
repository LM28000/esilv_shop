import 'package:esilv_shop/model/product.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'cart.g.dart';

@riverpod
class Cart extends _$Cart {
  @override
  List<Product> build() {
    return [];
  }
  void addProduct(Product product) {
    state = [...state, product];
  }
  void removeProduct(int index) {
    state = List<Product>.from(state)..removeAt(index);
  }
  String get priceInEuros =>
      "${(state.fold<num>(0, (prv, actual) => prv + actual.price)).toStringAsFixed(2)}€";
}
