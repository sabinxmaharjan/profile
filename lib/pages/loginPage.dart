import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login/pages/profile_page.dart';
import 'package:login/utils/colors.dart';
import 'package:login/widgets/check_box.dart';
import 'package:login/widgets/custom_button.dart';
import 'package:login/widgets/custom_input_field.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: AppColor.primaryWhite,
          leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: AppColor.primaryGrey,
              ),
              onPressed: () {}),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Log in",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 50,
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                  CustomTextField(
                    borderColor: AppColor.primaryBlue,
                    hintText: "jane@example.com",
                    obsecureText: false,
                    textAlign: TextAlign.start,
                  ),
                  CustomTextField(
                    borderColor: AppColor.primaryBlue,
                    hintText: "********",
                    obsecureText: true,
                    textAlign: TextAlign.start,
                  ),
                  CustomCheckBox(
                    newValue: false,
                    text: "Remember me",
                    color: AppColor.primaryGrey,
                  ),
                  CustomButton(
                    buttonTitle: "LOG IN",
                    color: AppColor.primaryRed,
                    isFilled: true,
                    onPressed: () {
                      Get.to(
                        ProfilePage(
                            name: "Suvekshya Shahi",
                            age: 28,
                            location: "Nepal",
                            profession: "Engineer",
                            networkImage: NetworkImage(
                                'https://images.unsplash.com/photo-1512310604669-443f26c35f52?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=375&q=80')),
                      );
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 1, 10, 2),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        CustomTextButton(
                          buttonTitle: "Havent registered yet?",
                          textAlign: TextAlign.end,
                          color: AppColor.primaryGrey,
                          onPressed: () {},
                        ),
                        SizedBox(width: 50.0),
                        CustomTextButton(
                            buttonTitle: "Forgot Password",
                            textAlign: TextAlign.start,
                            color: AppColor.primaryGrey,
                            onPressed: () {}),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
