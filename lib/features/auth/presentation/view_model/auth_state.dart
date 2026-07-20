import '../../../../config/base_state/base_state.dart';
import '../../domain/entities/signup_response_entity.dart';

class AuthState {
  BaseState<SignupResponseEntity>? registerState;

  AuthState({this.registerState}) {
    registerState =
        registerState ?? BaseState<SignupResponseEntity>(isLoading: false);
  }

  AuthState copyWith({BaseState<SignupResponseEntity>? registerStateArgument}) {
    return AuthState(
      registerState: registerStateArgument ?? this.registerState,
    );
  }
}
