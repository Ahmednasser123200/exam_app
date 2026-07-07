import 'package:exam_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import '../../../core/widgets/custom_text_form_field.dart';

class login extends StatelessWidget {
  const login({super.key});

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
            SizedBox(height: 48,),
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
