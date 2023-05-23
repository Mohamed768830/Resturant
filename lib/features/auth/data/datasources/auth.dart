import 'package:dio/dio.dart';import 'package:injectable/injectable.dart';import 'package:retrofit/retrofit.dart';import '../../../../core/manage/constants_manage.dart';import '../models/login/login.dart';import '../models/userData/user_data.dart';part 'auth.g.dart';@Injectable()@RestApi(baseUrl: Constants.kBASE_URL)abstract class AuthAPI {   @factoryMethod  factory AuthAPI(Dio dio) = _AuthAPI;  @GET('restaurant_pos.api.users.get_users')  Future< UserData> fetchAllUser();  @GET('logout')  Future  logout(@Header("Authorization") String authorization, @Query("usr") String usr, @Query("pwd") String pwd,);   @GET('login')   Future <Login> login(@Header("Authorization") String authorization, @Query("usr") String usr, @Query("pwd") String pwd,);}