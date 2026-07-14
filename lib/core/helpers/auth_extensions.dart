import 'auth_validators.dart';

extension AuthValidatorExtension on String? {
  String? get validateEmail => AuthValidators.validateEmail(this);
  String? get validatePassword => AuthValidators.validatePassword(this);
  String? get validateUsername => AuthValidators.validateUsername(this);
  String? get validateFirstName => AuthValidators.validateFirstName(this);
  String? get validateLastName => AuthValidators.validateLastName(this);
  String? get validatePhoneNumber => AuthValidators.validatePhoneNumber(this);
  
  String? validateConfirmPassword(String password) => 
      AuthValidators.validateConfirmPassword(this, password);
}
