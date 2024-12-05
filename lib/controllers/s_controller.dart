import 'package:get/get.dart';
import 'package:get_prac/models/product.dart';

class ShoppingController extends GetxController {
  var products = RxList<Product>();

  @override
  void onInit() {
    super.onInit();
    fetchProducts();
  }

  void fetchProducts() async {
    await Future.delayed(Duration(seconds: 1));
    var productResult = [
      Product(
        id: 1,
        pname: "Apple",
        pImage: "abd",
        pdescrip: "afafafafafafafafa",
        price: 30,
      ),
      Product(
        id: 2,
        pname: "kiwi",
        pImage: "abd",
        pdescrip: "afafafafafafafafa",
        price: 40,
      ),
      Product(
        id: 3,
        pname: "coconut",
        pImage: "abd",
        pdescrip: "afafafafafafafafa",
        price: 30,
      ),
    ];
    products.assignAll(productResult);
  }
}
