import 'package:get_it/get_it.dart';
import 'package:nano_health_suite/application/auth/auth_bloc.dart';
import 'package:nano_health_suite/application/home/home_bloc.dart';
import 'package:nano_health_suite/infrastructure/repo/product/i_product_repository.dart';
import 'package:nano_health_suite/infrastructure/repo/product/product_repository.dart';

final getIt = GetIt.instance;

Future<bool> setupInjection() async {
  final isFacadeDone = await _injectFacades();
  if (!isFacadeDone) return false;
  final isBlocDone = await _injectBlocs();
  if (!isBlocDone) return false;

  return true;
}

Future<bool> _injectFacades() async {
  getIt.registerSingleton<IProductRepository>(ProductRepository());

  return true;
}

Future<bool> _injectBlocs() async {
  getIt.registerFactory<AuthBloc>(() => AuthBloc());
  getIt.registerFactory<HomeBloc>(() => HomeBloc(getIt<IProductRepository>()));

  return true;
}
