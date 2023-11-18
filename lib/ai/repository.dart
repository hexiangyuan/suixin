import 'package:suixin_app/ai/home/model/product_model.dart';

class AiRepository {
  Future<List<ProductItem>> getAllProducts() async {
    return [
      ProductItem(
          logo: "https://via.placeholder.com/150",
          name: "商品1",
          desc: "商品1的描述",
          price: 1),
      ProductItem(
          logo: "https://via.placeholder.com/150",
          name: "商品2",
          desc: "商品2的描述;商品2的描述;商品2的描述;商品2的描述;商品2的描述",
          price: 2),
      ProductItem(
          logo: "https://via.placeholder.com/150",
          name: "商品2",
          desc: "商品2的描述;商品2的描述;商品2的描述;商品2的描述;商品2的描述",
          price: 2),
      ProductItem(
          logo: "https://via.placeholder.com/150",
          name: "商品2",
          desc: "商品2的描述;商品2的描述;商品2的描述;商品2的描述;商品2的描述",
          price: 2),
      ProductItem(
          logo: "https://via.placeholder.com/150",
          name: "商品2",
          desc: "商品2的描述;商品2的描述;商品2的描述;商品2的描述;商品2的描述",
          price: 2),
    ];
  }
}
