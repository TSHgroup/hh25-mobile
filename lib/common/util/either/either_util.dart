import 'package:either_dart/either.dart';

typedef E<L> = Either<L, Exception>;

typedef FE<L> = Future<E<L>>;

FE<T> fe<T>(Future<T?> future, {String? errorMessage}) async {
  final data = await future;
  return data != null
      ? Left(data)
      : Right(Exception(errorMessage ?? T.toString()));
}
