
import 'package:injectable/injectable.dart';

import '../datasources/auth.dart';
import '../models/login/login.dart';
import '../models/userData/user_data.dart';
@Injectable()
class AuthRepository {
  final AuthAPI api;

  AuthRepository(this.api);

  Future<UserData> fetchUserDate() async {
    final response = await api.fetchAllUser();
    return response;
  }

  Future<Login> login({required String usr,required String pwd,}) async {
    final response = await api.login("Bearer tdljpyms3nqx9pw7ykjdopbcepp8tygb", usr, pwd);
    return response;
  }
  Future  logout({required String usr,required String pwd,}) async {
    final response = await api.logout("Bearer tdljpyms3nqx9pw7ykjdopbcepp8tygb", usr, pwd);
    return response;
  }
}
