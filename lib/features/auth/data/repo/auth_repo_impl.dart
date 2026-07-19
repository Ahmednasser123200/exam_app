import 'package:exam_app/config/base_response/base_response.dart';
import 'package:exam_app/features/auth/data/datasource/remote/auth_remote_datasource.dart';
import 'package:exam_app/features/auth/data/models/responses/register_response_dto.dart';
import 'package:exam_app/features/auth/domain/repo/auth_repo.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/signup_response_entity.dart';
import '../models/requests/register_request_dto.dart';

@LazySingleton(as: AuthRepo)
class AuthRepoImpl implements AuthRepo {
  AuthRepoImpl(this.authRemoteDatasource);
  final AuthRemoteDatasource authRemoteDatasource;

  @override
  Future<BaseResponse<SignupResponseEntity>> register(
    RegisterRequestDto requestregister,
  ) async {
    final BaseResponse<RegisterResponseDto> response =
        await authRemoteDatasource.register(requestregister);

    switch (response) {
      case SuccessResponse<RegisterResponseDto>():
        return SuccessResponse(response.data.toDomain());

      case ErrorResponse<RegisterResponseDto>():
        return ErrorResponse(errMessage: response.errMessage);
    }
  }
}
