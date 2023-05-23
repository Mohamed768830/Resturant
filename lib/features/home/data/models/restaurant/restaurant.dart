import 'package:json_annotation/json_annotation.dart'; part 'restaurant.g.dart'; @JsonSerializable(nullable: false, ignoreUnannotated: false)class Restaurant {  @JsonKey(name: 'message')  List<Message> message;  Restaurant({required this.message});   factory Restaurant.fromJson(Map<String, dynamic> json) => _$RestaurantFromJson(json);   Map<String, dynamic> toJson() => _$RestaurantToJson(this);}@JsonSerializable(nullable: false, ignoreUnannotated: false)class Message {  @JsonKey(name: 'group_name')  String groupName;  @JsonKey(name: 'items')  List<Item> items;  Message({required this.groupName, required this.items});   factory Message.fromJson(Map<String, dynamic> json) => _$MessageFromJson(json);   Map<String, dynamic> toJson() => _$MessageToJson(this);}@JsonSerializable(nullable: false, ignoreUnannotated: false)class Item {  @JsonKey(name: 'title')  String title;  @JsonKey(name: 'item_code')  String itemCode;  @JsonKey(name: 'price')  double price;  @JsonKey(name: 'currency')  String currency;  @JsonKey(name: 'sides')  List<Side> sides;  Item({required this.title, required this.itemCode, required this.price, required this.currency, required this.sides});   factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);   Map<String, dynamic> toJson() => _$ItemToJson(this);}@JsonSerializable(nullable: false, ignoreUnannotated: false)class Side {  @JsonKey(name: 'title')  String title;  @JsonKey(name: 'item_code')  String itemCode;  Side({required this.title, required this.itemCode});   factory Side.fromJson(Map<String, dynamic> json) => _$SideFromJson(json);   Map<String, dynamic> toJson() => _$SideToJson(this);}