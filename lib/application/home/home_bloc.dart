import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:nano_health_suite/core/error/failure.dart';
import 'package:nano_health_suite/infrastructure/model/product/product_model.dart';
import 'package:nano_health_suite/infrastructure/repo/product/i_product_repository.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(this._iProductRepository) : super(HomeState.initial()) {
    on<HomeGetProductEvent>(
      _onGetProductEvent,
    );
    on<DetailChangeSizeEvent>(
      _onChangeContainerSize,
    );
  }

  final IProductRepository _iProductRepository;

  void fetchEvent() {
    add(HomeGetProductEvent());
  }

  void _onChangeContainerSize(
      DetailChangeSizeEvent event, Emitter<HomeState> emit) {
    emit(
      state.copyWith(isUpOrDownContainer: !state.isUpOrDownContainer),
    );
  }

  Future<void> _onGetProductEvent(
      HomeGetProductEvent event, Emitter<HomeState> emit) async {
    final failureOrProduct = await _iProductRepository.getProduct();
    final newState = state.failureOrProductOption.fold(
      () {
        return state.copyWith(failureOrProductOption: some(failureOrProduct));
      },
      (failureOrGetProduct) {
        failureOrProduct.fold(
          (_) {
            return state;
          },
          (productModel) {
            state.copyWith(
              failureOrProductOption: some(right(productModel)),
            );
          },
        );
      },
    );
    emit(newState!);
  }
}
