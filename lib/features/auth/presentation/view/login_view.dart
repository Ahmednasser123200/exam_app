import 'package:exam_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

import '../../../../core/widgets/custom_text_form_field.dart';

class login_view extends StatelessWidget {
  const login_view({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(appBar: AppBar(
        title: Row(children: [IconButton(onPressed: (){},icon: Icon(Icons.arrow_back_ios_new)),Text("Login")],),
        elevation: 0,
      ),

        body: Column(
          children: [
            Padding(padding: EdgeInsetsGeometry.symmetric(horizontal: 16.w)),
            CustomTextFormField(label: "Email", hintText: "Enter your email"),
            SizedBox(height: 16.h,),
            CustomTextFormField(label: "Password", hintText: "Enter your password"),
            SizedBox(height: 16.h,),
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
