import 'package:exam_app/config/base_response/base_response.dart';

import '../../models/requests/login_request_dto.dart';
import '../../models/requests/register_request_dto.dart';
import '../../models/responses/login_response_dto.dart';
import '../../models/responses/register_response_dto.dart';

abstract class AuthRemoteDatasource {
  Future<BaseResponse<LoginResponseDto>> login(LoginRequestDto requestlogin);
  Future<BaseResponse<RegisterResponseDto>> register(RegisterRequestDto requestregister);
}