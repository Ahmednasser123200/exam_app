import 'package:json_annotation/json_annotation.dart';

import '../../../domain/entities/signup_response_entity.dart';
import 'user_dto.dart';

part 'register_response_dto.g.dart';

@JsonSerializable()
class RegisterResponseDto {
  @JsonKey(name: 'message')
  final String message;

  @JsonKey(name: 'token')
  final String token;

  @JsonKey(name: 'user')
  final UserDto user;

  const RegisterResponseDto({
    required this.message,
    required this.token,
    required this.user,
  });

  SignupResponseEntity toDomain() {
    return SignupResponseEntity(
      message: message,
      token: token,
      user: user.toDomain(),
    );
  }

  factory RegisterResponseDto.fromJson(Map<String, dynamic> json) =>
      _$RegisterResponseDtoFromJson(json);

  Map<String, dynamic> toJson() => _$RegisterResponseDtoToJson(this);
}