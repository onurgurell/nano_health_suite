import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:nano_health_suite/core/error/failure.dart';
import 'package:nano_health_suite/infrastructure/model/product/product_model.dart';
import 'package:nano_health_suite/infrastructure/repo/product/i_product_repository.dart';
import 'package:http/http.dart' as http;

class ProductRepository extends IProductRepository {
  @override
  Future<Either<Failure, SomeRootEntity>> getProduct() async {
    try {
      const url = "https://fakestoreapi.com/products/1";

      final response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        final jsonData = jsonDecode(response.body);
        final product = SomeRootEntity.fromJson(jsonData);

        return right(product);
      } else {
        return left(
          ServiceError(message: 'status code return ${response.statusCode}'),
        );
      }
    } catch (e) {
      return left(
        UnImplementedError(message: 'unimplemented error ${e.toString()}'),
      );
    }
  }
}
