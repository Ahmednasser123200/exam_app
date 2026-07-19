import 'user_entity.dart';

class SignupResponseEntity {
  final String message;
  final String token;
  final UserEntity user;

  const SignupResponseEntity({
    required this.message,
    required this.token,
    required this.user,
  });
}
