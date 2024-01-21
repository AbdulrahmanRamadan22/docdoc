// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';

part 'sign_up_request_body.g.dart';

@JsonSerializable()
class SignUpRequestBody {
  String email;
  String name;
  String phone;
  int gender;
  String password;
  @JsonKey(name: 'password_confirmation')
  String passwordConfirmation;

  SignUpRequestBody({required this.email, required this.password,required this.gender,required this.name,required this.passwordConfirmation,required this.phone});

  Map<String, dynamic> toJson() => _$SignUpRequestBodyToJson(this);
}
