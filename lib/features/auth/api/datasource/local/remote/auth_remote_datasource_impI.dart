import 'package:dio/dio.dart';
import 'package:exam_app/features/auth/data/models/requests/register_request_dto.dart';
import 'package:exam_app/features/auth/data/models/responses/register_response_dto.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../config/base_response/base_response.dart';
import '../../../../data/datasource/remote/auth_remote_datasource.dart';
import '../../../../data/models/requests/login_request_dto.dart';
import '../../../../data/models/responses/login_response_dto.dart';
import '../../../client/auth_api_client.dart';

@LazySingleton(as: AuthRemoteDatasource)
class AuthRemoteDatasourceImpl implements AuthRemoteDatasource {
  AuthRemoteDatasourceImpl(this.authApiClient);
  final AuthApiClient authApiClient;

  @override
  Future<BaseResponse<LoginResponseDto>> login(
    LoginRequestDto requestlogin,
  ) async {
    try {
      final response = await authApiClient.login(requestlogin);
      return SuccessResponse(response);
    } on DioException catch (e) {
      print("STATUS CODE: ${e.response?.statusCode}");
      print("RESPONSE: ${e.response?.data}");
      print("REQUEST: ${e.requestOptions.uri}");

      return ErrorResponse(
        e.response?.data.toString() ?? e.message ?? "Unknown Error",
      );
    }
  }

  @override
  Future<BaseResponse<RegisterResponseDto>> register(
    RegisterRequestDto requestregister,
  ) async {
    try {
      final response = await authApiClient.register(requestregister);
      return SuccessResponse(response);
    } on DioException catch (e) {
      print("STATUS CODE: ${e.response?.statusCode}");
      print("RESPONSE: ${e.response?.data}");
      print("REQUEST: ${e.requestOptions.uri}");

      return ErrorResponse(
        e.response?.data.toString() ?? e.message ?? "Unknown Error",
      );
    }
  }
}
