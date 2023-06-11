import 'package:dartz/dartz.dart';
import 'package:nano_health_suite/core/error/failure.dart';
import 'package:nano_health_suite/infrastructure/model/product/product_model.dart';

abstract class IProductRepository {
  Future<Either<Failure, SomeRootEntity>> getProduct();
}
