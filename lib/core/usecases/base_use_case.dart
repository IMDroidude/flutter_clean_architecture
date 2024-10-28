
import 'package:equatable/equatable.dart';
import 'package:flutter_clean_architecture/core/errors/failures.dart';
import 'package:dartz/dartz.dart';

abstract interface class BaseUseCase<SuccessType, Params> {
  Future<Either<Failure, SuccessType>> call(Params params);
}

class NoParams {}



// class NoParam extends Equatable {
//   const NoParam();

//   @override
//   List<Object> get props => [];
// }