  import 'package:dio/dio.dart';
import 'package:exam_app/core/constants/endpoints.dart';
import 'package:injectable/injectable.dart';
  import 'package:retrofit/retrofit.dart';

  import '../../data/models/requests/login_request_dto.dart';
  import '../../data/models/requests/register_request_dto.dart';
  import '../../data/models/responses/login_response_dto.dart';
  import '../../data/models/responses/register_response_dto.dart';

  part 'auth_api_client.g.dart';

  @singleton
  @RestApi()
  abstract class AuthApiClient {
    @factoryMethod
    factory AuthApiClient(Dio dio) = _AuthApiClient;

    @POST(Endpoints.login)
    Future<LoginResponseDto> login(@Body() LoginRequestDto requestlogin);

    @POST(Endpoints.register)
    Future<RegisterResponseDto> register(@Body() RegisterRequestDto requestregister);

  }