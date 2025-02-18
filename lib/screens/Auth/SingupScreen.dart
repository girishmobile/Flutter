import 'package:flutter/material.dart';
import 'package:redefine_social_app/core/common/app_button_widget.dart';
import 'package:redefine_social_app/core/common/app_scaffold.dart';
import 'package:redefine_social_app/core/common/app_term_condition.dart';
import 'package:redefine_social_app/core/common/app_text_field_widget.dart';
import 'package:redefine_social_app/core/common/app_text_widget.dart';
import 'package:redefine_social_app/core/components/components.dart';
import 'package:redefine_social_app/core/constant/num_constants.dart';
import 'package:redefine_social_app/core/constant/string_utility.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  var isShowPassword = true;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return AppScaffold(
      body: SafeArea(
          child: Container(
        height: size.height,
        width: size.width,
        alignment: Alignment.center,
        margin: const EdgeInsets.all(containerMargin),
        padding: const EdgeInsets.all(containerPadding),
        child: ListView(
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          children: [_singUpView(size: size, context: context)],
        ),
      )),
    );
  }

  Widget _singUpView({required Size size, required BuildContext context}) {
    return Form(
      child: Column(
        spacing: columSpacing,
        children: [
          AppTextWidget(
              text: signUpText,
              style: Theme.of(context).textTheme.headlineMedium),
          AppTextFieldWidget(
            hintText: fullName,
          ),
          AppTextFieldWidget(
            hintText: emailText,
          ),
          AppTextFieldWidget(
            hintText: phoneText,
          ),
          AppTextFieldWidget(
            hintText: passwordText,
            obscureText: isShowPassword,
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  isShowPassword = !isShowPassword;
                });
              },
              icon: isShowPassword
                  ? Icon(Icons.visibility_off)
                  : Icon(Icons.visibility),
            ),
          ),
          AppTermCondition(),
          AppButtonWidget(
            top: 5,
            text: createAccount,
            onPressed: () {},
            width: size.width,
            buttonStyle: commonButtonStyle(context: context),
            textStyle: Theme.of(context).textTheme.labelMedium,
          ),
          AppTextWidget(
            text: emailConfirmationText,
          )
        ],
      ),
    );
  }
}
