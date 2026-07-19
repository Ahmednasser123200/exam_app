import 'package:exam_app/features/auth/domain/entities/signup_response_entity.dart';

import '../../../../config/base_response/base_response.dart';
import '../../data/models/requests/register_request_dto.dart';

abstract class AuthRepo {
  Future<BaseResponse<SignupResponseEntity>> register(
    RegisterRequestDto requestregister,
  );
}
