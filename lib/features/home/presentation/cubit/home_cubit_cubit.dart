
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:pos_brandimic/features/home/data/models/restaurant/restaurant.dart';

import '../../data/repositories/restaurant_repositories.dart';

part 'home_cubit_state.dart';
@Injectable()
class HomeCubitCubit extends Cubit<HomeCubitState> {
  HomeCubitCubit(this.restaurantRepository) : super(HomeCubitInitial());
 final  RestaurantRepository  restaurantRepository;
  static HomeCubitCubit get(context) => BlocProvider.of(context);

  fetchRestaurantItem({
    required String deliverType,
    required String restaurant,
  }) async {
    try {
      emit(LoadingState());
      await restaurantRepository.fetchRestaurantItem(deliverType: deliverType,restaurant:restaurant ).then((value) {
        emit(RestaurantSuccessState( value));
      });
    } catch (e) {
      emit(ErrorState(e.toString()));
    }
  }
}
