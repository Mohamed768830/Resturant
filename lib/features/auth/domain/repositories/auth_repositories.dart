import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../entities/auth_entity.dart';

abstract class AuthRepository {
  Future<Either<Failure, Unit>> passwordAuth(String password);
  Future<Either<Failure, Unit>> loginAuth(String systemLink);
  Future<Either<Failure, List<AuthEntity>>> getUsersAuth();
}
