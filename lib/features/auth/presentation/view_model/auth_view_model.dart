import 'package:exam_app/config/base_response/base_response.dart';
import 'package:exam_app/features/auth/domain/entities/signup_response_entity.dart';
import 'package:exam_app/features/auth/domain/usecases/signup_usecase.dart';
import 'package:exam_app/features/auth/presentation/view_model/auth_event.dart';
import 'package:exam_app/features/auth/presentation/view_model/auth_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../data/models/requests/register_request_dto.dart';

@injectable
class AuthViewModel extends Cubit<AuthState> {
  final SignupUsecase _signupUsecase;
  AuthViewModel(this._signupUsecase) : super(AuthState());

  void doEvent(AuthEvent event) {
    switch (event) {
      case SignupEvent():
        _signup(event);
        break;
      case LoginEvent():
        _login(event);
    }
  }

  void _signup(SignupEvent event) async {
    emit(
      state.copyWith(
        registerStateArgument: state.registerState?.copyWith(
          isLoading: true,
          errorMessage: "",
        ),
      ),
    );
    //await Future.delayed(const Duration(seconds: 2));
    final Request = RegisterRequestDto(
      username: event.username,
      firstName: event.firstName,
      lastName: event.lastName,
      email: event.email,
      password: event.password,
      rePassword: event.rePassword,
      phone: event.phone,
    );
    final response = await _signupUsecase(Request);
    switch (response) {
      case SuccessResponse<SignupResponseEntity>():
        emit(
          state.copyWith(
            registerStateArgument: state.registerState?.copyWith(
              isLoading: false,
              data: response.data,
            ),
          ),
        );
        break;
      case ErrorResponse<SignupResponseEntity>():
        emit(
          state.copyWith(
            registerStateArgument: state.registerState?.copyWith(
              isLoading: false,

              errorMessage: response.errMessage,
            ),
          ),
        );
        break;
    }
  }

  void _login(LoginEvent event) async {}
}
