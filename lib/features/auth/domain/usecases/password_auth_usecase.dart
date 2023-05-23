import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../repositories/auth_repositories.dart';

class PasswordUseCase {
  final AuthRepository repository;

  PasswordUseCase(this.repository);

  Future<Either<Failure, Unit>> call(String password) async {
    return await repository.passwordAuth(password);
  }
}
