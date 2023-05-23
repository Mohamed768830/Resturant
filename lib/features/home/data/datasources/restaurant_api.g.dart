// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant_api.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _RestaurantAPI implements RestaurantAPI {
  _RestaurantAPI(
    this._dio, {
    this.baseUrl,
  }) {
    baseUrl ??= 'http://194.163.178.192:15300/api/method/';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<Restaurant> fetchRestaurantData(
    restaurant,
    deliverType,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'restaurant': restaurant,
      r'deliver_type': deliverType,
    };
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<Restaurant>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'euphoria.api.restaurant.get_menu_items',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Restaurant.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
