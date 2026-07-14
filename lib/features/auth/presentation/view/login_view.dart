import 'package:exam_app/core/widgets/custom_button.dart';
import 'package:exam_app/core/helpers/auth_validators.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

import '../../../../core/widgets/custom_text_form_field.dart';

class login_view extends StatefulWidget {
  const login_view({super.key});

  @override
  State<login_view> createState() => _login_viewState();
}

class _login_viewState extends State<login_view> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(appBar: AppBar(
        title: Row(children: [Icon(Icons.arrow_back_ios_new),Text("Login")],),
        elevation: 0,
      ),

        body: Column(
          children: [
            Padding(padding: EdgeInsetsGeometry.symmetric(horizontal: 16)),
            CustomTextFormField(label: "Email", hintText: "Enter your email"),
            CustomTextFormField(label: "Password", hintText: "Enter your password"),
            Row(children: [Checkbox(value: false, onChanged: (value){}),Text("Remember me"), TextButton(onPressed: (){}, child: Text("Forget Password?"),),],mainAxisAlignment: MainAxisAlignment.spaceBetween,),
            SizedBox(height:48,),
            CustomButton(text: "Login", onPressed: (){}, isEnabled: true,),
            SizedBox(height: 16,),
            Row(
              children: [
                Text("Don't have an account?"),
                GestureDetector(child:Text("Sign up",style: TextStyle(color: Colors.blue,decoration: TextDecoration.underline,),),onTap: () {

                },


                )
              ],
            ),



          ],

        )
      
      
      ),
    );
  }
}
