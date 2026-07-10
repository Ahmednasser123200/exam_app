import 'package:json_annotation/json_annotation.dart';

import 'user_dto.dart';

part 'login_response_dto.g.dart';

@JsonSerializable()
class LoginResponseDto {
  @JsonKey(name: 'message')
  final String message;

  @JsonKey(name: 'token')
  final String token;

  @JsonKey(name: 'user')
  final UserDto user;

  const LoginResponseDto({
    required this.message,
    required this.token,
    required this.user,
  });

  factory LoginResponseDto.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseDtoFromJson(json);

  Map<String, dynamic> toJson() => _$LoginResponseDtoToJson(this);
}