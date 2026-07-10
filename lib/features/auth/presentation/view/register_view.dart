import 'package:exam_app/config/di/di.dart';
import 'package:exam_app/core/widgets/custom_button.dart';
import 'package:exam_app/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

import '../../../../config/base_response/base_response.dart';
import '../../data/datasource/remote/auth_remote_datasource.dart';
import '../../data/models/requests/login_request_dto.dart';
import '../../data/models/requests/register_request_dto.dart';
import '../../data/models/responses/login_response_dto.dart';
import '../../data/models/responses/register_response_dto.dart';

class register_view extends StatelessWidget {
  const register_view({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios_new)),
            Text("Sign up"),
          ],
        ),
        elevation: 0,
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 16.w),
            child: Column(
              children: [
                SizedBox(height: 10.h),
                CustomTextFormField(
                  label: "Username",
                  hintText: "Enter your username",
                ),
                SizedBox(height: 10.h),

                Row(
                  children: [
                    Expanded(
                      child: CustomTextFormField(
                        label: "First Name",
                        hintText: "Enter your first name",
                      ),
                    ),
                    SizedBox(width: 16.w),
                    Expanded(
                      child: CustomTextFormField(
                        label: "Last Name",
                        hintText: "Enter your last name",
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16.h),
                CustomTextFormField(
                  label: "Email",
                  hintText: "Enter your email",
                ),
                SizedBox(height: 16.h),
                Row(
                  children: [
                    Expanded(
                      child: CustomTextFormField(
                        label: "Password",
                        hintText: "Enter your password",
                      ),
                    ),
                    SizedBox(width: 16.w),
                    Expanded(
                      child: CustomTextFormField(
                        label: "Confirm Password",
                        hintText: "Confirm your password",
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16.h),

                CustomTextFormField(
                  label: "Phone Number",
                  hintText: "Enter your phone number",
                ),
                SizedBox(height: 48.h),
                CustomButton(
                  text: "Sign up",
                  onPressed: () async {
                    final request = RegisterRequestDto(
                      username: "elevate12345",
                      firstName: "Ahmed",
                      lastName: "Nasser",
                      email: "ahmed12345@1elevate.com",
                      password: "Elevate@123",
                      rePassword: "Elevate@123",
                      phone: "01094437111",
                    );

                    print(request.toJson());

                    final response = await getIt<AuthRemoteDatasource>()
                        .register(request);

                    if (response is SuccessResponse<RegisterResponseDto>) {
                      print(response.data);
                    } else if (response is ErrorResponse<RegisterResponseDto>) {
                      print(response.error);
                    }
                  },
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
                        // Navigate to login view
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
