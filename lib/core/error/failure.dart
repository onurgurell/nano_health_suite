class Failure {}

class ServiceError extends Failure {
  String message;
  ServiceError({required this.message});
}

class UnImplementedError extends Failure {
  String message;
  UnImplementedError({required this.message});
}
