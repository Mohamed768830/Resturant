import 'package:dio/dio.dart';import 'package:injectable/injectable.dart';import 'package:retrofit/retrofit.dart';import '../../../../core/manage/constants_manage.dart';import '../models/restaurant/restaurant.dart';part 'restaurant_api.g.dart';@Injectable()@RestApi(baseUrl: Constants.kBASE_URL)abstract class RestaurantAPI {  @factoryMethod  factory RestaurantAPI(Dio dio) = _RestaurantAPI;  @GET('euphoria.api.restaurant.get_menu_items')  Future< Restaurant> fetchRestaurantData(@Query("restaurant") String restaurant,@Query("deliver_type") String deliverType, );  }