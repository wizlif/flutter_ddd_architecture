import 'package:dartz/dartz.dart';
import 'package:ddd/domain/auth/errors.dart';
import 'package:ddd/domain/auth/value_failures.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

@immutable
abstract class ValueObject<T> extends Equatable {
  const ValueObject();

  Either<ValueFailure<T>, T> get value;

  /// Throws [UnExpectedValueError] containing [ValueFailure]
  ///
  /// id = identity - same as (r) => r
  T getOrCrash() => value.fold((f) => throw UnExpectedValueError(f), id);

  bool isValid() => value.isRight();

  @override
  List<Object?> get props => [value];

  @override
  String toString() => 'Value($value)';

}