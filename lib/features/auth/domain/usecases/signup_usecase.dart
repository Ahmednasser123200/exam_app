import 'package:exam_app/config/base_response/base_response.dart';
import 'package:exam_app/features/auth/data/models/requests/register_request_dto.dart';
import 'package:exam_app/features/auth/domain/entities/signup_response_entity.dart';
import 'package:exam_app/features/auth/domain/repo/auth_repo.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class SignupUsecase {
  SignupUsecase(this.authRepo);

  final AuthRepo authRepo;

  Future<BaseResponse<SignupResponseEntity>> call(
    RegisterRequestDto requestregister,
  ) async {
    return authRepo.register(requestregister);
  }
}
