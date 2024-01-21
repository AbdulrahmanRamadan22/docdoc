// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignUpRequestBody _$SignUpRequestBodyFromJson(Map<String, dynamic> json) =>
    SignUpRequestBody(
      email: json['email'] as String,
      password: json['password'] as String,
      gender: json['gender'] as int,
      name: json['name'] as String,
      passwordConfirmation: json['password_confirmation'] as String,
      phone: json['phone'] as String,
    );

Map<String, dynamic> _$SignUpRequestBodyToJson(SignUpRequestBody instance) =>
    <String, dynamic>{
      'email': instance.email,
      'name': instance.name,
      'phone': instance.phone,
      'gender': instance.gender,
      'password': instance.password,
      'password_confirmation': instance.passwordConfirmation,
    };
