// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Login _$LoginFromJson(Map<String, dynamic> json) => Login(
      message: json['message'] as String,
      homePage: json['home_page'] as String,
      fullName: json['full_name'] as String,
    );

Map<String, dynamic> _$LoginToJson(Login instance) => <String, dynamic>{
      'message': instance.message,
      'home_page': instance.homePage,
      'full_name': instance.fullName,
    };
