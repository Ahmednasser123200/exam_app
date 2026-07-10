import 'package:json_annotation/json_annotation.dart';

part 'register_request_dto.g.dart';

@JsonSerializable()
class RegisterRequestDto {
  @JsonKey(name: "username")
  final String username;

  @JsonKey(name: "firstName")
  final String firstName;

  @JsonKey(name: "lastName")
  final String lastName;

  @JsonKey(name: "email")
  final String email;

  @JsonKey(name: "password")
  final String password;

  @JsonKey(name: "rePassword")
  final String rePassword;

  @JsonKey(name: "phone")
  final String phone;

  const RegisterRequestDto({
    required this.username,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.password,
    required this.rePassword,
    required this.phone,
  });

  factory RegisterRequestDto.fromJson(Map<String, dynamic> json) =>
      _$RegisterRequestDtoFromJson(json);

  Map<String, dynamic> toJson() => _$RegisterRequestDtoToJson(this);
}