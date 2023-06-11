part of 'home_bloc.dart';

class HomeState extends Equatable {
  const HomeState({required this.failureOrProductOption});

  final Option<Either<Failure, SomeRootEntity>> failureOrProductOption;

  factory HomeState.initial() {
    return HomeState(
      failureOrProductOption: none(),
    );
  }

  HomeState copyWith({
    final Option<Either<Failure, SomeRootEntity>>? failureOrProductOption,
  }) {
    return HomeState(
      failureOrProductOption:
          failureOrProductOption ?? this.failureOrProductOption,
    );
  }

  @override
  List<Object> get props => [failureOrProductOption];
}
