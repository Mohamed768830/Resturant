import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../entities/auth_entity.dart';
import '../repositories/auth_repositories.dart';

class UsersUseCase {
  final AuthRepository repository;

  UsersUseCase(this.repository);

  Future<Either<Failure, List<AuthEntity>>> call() async {
    return await repository.getUsersAuth();
  }
}
