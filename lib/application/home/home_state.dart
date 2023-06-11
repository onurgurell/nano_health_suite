part of 'home_bloc.dart';

class HomeState extends Equatable {
  const HomeState({
    required this.failureOrProductOption,
    required this.isUpOrDownContainer,
  });

  final Option<Either<Failure, SomeRootEntity>> failureOrProductOption;
  final bool isUpOrDownContainer;

  factory HomeState.initial() {
    return HomeState(
      failureOrProductOption: none(),
      isUpOrDownContainer: false,
    );
  }

  HomeState copyWith({
    final Option<Either<Failure, SomeRootEntity>>? failureOrProductOption,
    final bool? isUpOrDownContainer,
  }) {
    return HomeState(
      isUpOrDownContainer: isUpOrDownContainer ?? this.isUpOrDownContainer,
      failureOrProductOption:
          failureOrProductOption ?? this.failureOrProductOption,
    );
  }

  @override
  List<Object> get props => [failureOrProductOption, isUpOrDownContainer];
}
