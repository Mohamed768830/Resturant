// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Restaurant _$RestaurantFromJson(Map<String, dynamic> json) => Restaurant(
      message: (json['message'] as List<dynamic>)
          .map((e) => Message.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RestaurantToJson(Restaurant instance) =>
    <String, dynamic>{
      'message': instance.message,
    };

Message _$MessageFromJson(Map<String, dynamic> json) => Message(
      groupName: json['group_name'] as String,
      items: (json['items'] as List<dynamic>)
          .map((e) => Item.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MessageToJson(Message instance) => <String, dynamic>{
      'group_name': instance.groupName,
      'items': instance.items,
    };

Item _$ItemFromJson(Map<String, dynamic> json) => Item(
      title: json['title'] as String,
      itemCode: json['item_code'] as String,
      price: (json['price'] as num).toDouble(),
      currency: json['currency'] as String,
      sides: (json['sides'] as List<dynamic>)
          .map((e) => Side.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ItemToJson(Item instance) => <String, dynamic>{
      'title': instance.title,
      'item_code': instance.itemCode,
      'price': instance.price,
      'currency': instance.currency,
      'sides': instance.sides,
    };

Side _$SideFromJson(Map<String, dynamic> json) => Side(
      title: json['title'] as String,
      itemCode: json['item_code'] as String,
    );

Map<String, dynamic> _$SideToJson(Side instance) => <String, dynamic>{
      'title': instance.title,
      'item_code': instance.itemCode,
    };
