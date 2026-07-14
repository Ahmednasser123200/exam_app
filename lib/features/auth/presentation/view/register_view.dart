import 'package:exam_app/config/di/di.dart';
import 'package:exam_app/core/widgets/custom_button.dart';
import 'package:exam_app/core/widgets/custom_text_form_field.dart';
import  'package:exam_app/core/helpers/auth_validators.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

import '../../../../config/base_response/base_response.dart';
import '../../data/datasource/remote/auth_remote_datasource.dart';
import '../../data/models/requests/login_request_dto.dart';
import '../../data/models/requests/register_request_dto.dart';
import '../../data/models/responses/login_response_dto.dart';
import '../../data/models/responses/register_response_dto.dart';

class register_view extends StatefulWidget {
  const register_view({super.key});

  @override
  State<register_view> createState() => _register_viewState();
}

class _register_viewState extends State<register_view> {
  final _formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  final _phoneController = TextEditingController();

  @override
  void dispose() {
    _usernameController.dispose();
    _firstNameController.dispose();
    _lastNameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            IconButton(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(Icons.arrow_back_ios_new),
            ),
            const Text("Sign up"),
          ],
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                SizedBox(height: 10.h),
                CustomTextFormField(
                  label: "Username",
                  hintText: "Enter your username",
                  controller: _usernameController,
                  validator: AuthValidators.validateUsername,
                ),
                SizedBox(height: 10.h),
                Row(
                  children: [
                    Expanded(
                      child: CustomTextFormField(
                        label: "First Name",
                        hintText: "Enter your first name",
                        controller: _firstNameController,
                        validator: AuthValidators.validateFirstName,
                      ),
                    ),
                    SizedBox(width: 16.w),
                    Expanded(
                      child: CustomTextFormField(
                        label: "Last Name",
                        hintText: "Enter your last name",
                        controller: _lastNameController,
                        validator: AuthValidators.validateLastName,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16.h),
                CustomTextFormField(
                  label: "Email",
                  hintText: "Enter your email",
                  controller: _emailController,
                  validator: AuthValidators.validateEmail,
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(height: 16.h),
                Row(
                  children: [
                    Expanded(
                      child: CustomTextFormField(
                        label: "Password",
                        hintText: "Enter your password",
                        controller: _passwordController,
                        validator: AuthValidators.validatePassword,
                        obscureText: true,
                      ),
                    ),
                    SizedBox(width: 16.w),
                    Expanded(
                      child: CustomTextFormField(
                        label: "Confirm Password",
                        hintText: "Confirm your password",
                        controller: _confirmPasswordController,
                        validator: (value) => AuthValidators.validateConfirmPassword(
                          value,
                          _passwordController.text,
                        ),
                        obscureText: true,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16.h),
                CustomTextFormField(
                  label: "Phone Number",
                  hintText: "Enter your phone number",
                  controller: _phoneController,
                  validator: AuthValidators.validatePhoneNumber,
                  keyboardType: TextInputType.phone,
                ),
                SizedBox(height: 48.h),
                CustomButton(
                  text: "Sign up",
                  onPressed: () {},
                  isEnabled: true,
                ),
                SizedBox(height: 16.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
                      style: TextStyle(fontSize: 16.sp),
                    ),
                    GestureDetector(
                      child: Text(
                        "Login",
                        style: TextStyle(
                          color: const Color.fromARGB(255, 4, 74, 131),
                          fontSize: 16.sp,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
